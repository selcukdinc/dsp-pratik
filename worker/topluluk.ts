// Topluluk: üyelerin paylaştığı MATLAB betikleri (/api/topluluk/kayit) ve
// bildirimler (/api/topluluk/bildir). Kayıtlar tarayıcıda çalışır ve resmi
// ilerlemeye sayılmaz.

import { Hono, type Context } from "hono";
import { BILDIRIM_ESIGI, GUNLUK_KAYIT, YENI_HESAP_MS, bildirimHatasi, kayitHatasi, type BildirimTuru, type Kayit, type KayitGirdi, type KayitOzeti } from "../shared/topluluk";
import type { Me } from "../shared/api";
import { susturuldu } from "./sosyal";
import type { Env } from "./session";
import { yetkisiVar } from "./yetki";

type C = Context<Env>;
const GUN = 24 * 60 * 60 * 1000;

const topluluk = new Hono<Env>();

const uye = (c: C): Me | null => {
  const me = c.get("me");
  return me?.kind === "member" ? me : null;
};
const GIRIS = { error: "Bunun için giriş yapmalısın." };

async function govde<T>(c: C): Promise<Partial<T>> {
  const b = await c.req.json<T>().catch(() => null);
  return b && typeof b === "object" ? b : {};
}

// Yönetici sınav döneminde yeni kayıt paylaşımını kapatabilir
export async function kayitPaylasimiAcik(db: D1Database): Promise<boolean> {
  const r = await db.prepare("SELECT value FROM settings WHERE key = 'kayit_paylasimi'").first<{ value: string }>();
  return r?.value !== "0";
}

// Herkese açık içerik için: susturulmamış ve en az 24 saatlik hesap
async function yayimlayabilir(db: D1Database, me: Me): Promise<string | null> {
  if (susturuldu(me.mutedUntil)) return "Hesabın şu an içerik paylaşamıyor. Sorun olduğunu düşünüyorsan yöneticiye yaz.";
  const u = await db.prepare("SELECT created_at FROM users WHERE id = ?").bind(me.id).first<{ created_at: number }>();
  if (!u || Date.now() - u.created_at < YENI_HESAP_MS) return "Yeni hesaplar ilk 24 saat içerik yayımlayamaz.";
  return null;
}

type KayitSatiri = {
  id: string; user_id: string; topic_id: string; topic_title: string; title: string; username: string | null;
  begeni: number; ben_begendim: number; hidden: number; created_at: number;
};

const KAYIT_SQL = `SELECT k.id, k.user_id, k.topic_id, t.title AS topic_title, k.title, u.username, k.hidden, k.created_at,
         (SELECT COUNT(*) FROM kayit_begeni b WHERE b.kayit_id = k.id) AS begeni,
         EXISTS (SELECT 1 FROM kayit_begeni b WHERE b.kayit_id = k.id AND b.user_id = ?1) AS ben_begendim
  FROM kayitlar k JOIN topics t ON t.id = k.topic_id LEFT JOIN users u ON u.id = k.user_id`;

const kayitOzeti = (r: KayitSatiri): KayitOzeti => ({
  id: r.id, topicId: r.topic_id, topicTitle: r.topic_title, title: r.title, username: r.username, begeni: r.begeni,
  benBegendim: r.ben_begendim === 1, gizli: r.hidden === 1, createdAt: r.created_at,
});

// Liste herkese açık; gizlenen kayıtları yalnızca sahibi görür
topluluk.get("/kayit", async (c) => {
  const meId = c.get("me")?.id ?? "";
  const konu = c.req.query("konu");
  const kisi = c.req.query("kullanici");
  const sira = c.req.query("sira") === "begeni" ? "begeni DESC, k.created_at DESC" : "k.created_at DESC";
  const kosullar = ["(k.hidden = 0 OR k.user_id = ?1)"];
  const degerler: string[] = [meId];
  if (konu) {
    degerler.push(konu);
    kosullar.push(`k.topic_id = ?${degerler.length}`);
  }
  if (kisi) {
    degerler.push(kisi.toLowerCase());
    kosullar.push(`u.username = ?${degerler.length}`);
  }
  const { results } = await c.env.DB.prepare(`${KAYIT_SQL} WHERE ${kosullar.join(" AND ")} ORDER BY ${sira} LIMIT 100`)
    .bind(...degerler)
    .all<KayitSatiri>();
  return c.json(results.map(kayitOzeti));
});

topluluk.get("/kayit/:id", async (c) => {
  const me = c.get("me");
  const db = c.env.DB;
  const r = await db.prepare(`${KAYIT_SQL.replace("SELECT k.id,", "SELECT k.description, k.kod, k.id,")} WHERE k.id = ?2`)
    .bind(me?.id ?? "", c.req.param("id"))
    .first<KayitSatiri & { description: string; kod: string }>();
  const yonetici = yetkisiVar(me, "bildirim.yonet");
  if (!r || (r.hidden && r.user_id !== me?.id && !yonetici)) return c.json({ error: "Bu kayıt bulunamadı." }, 404);
  const bildirdim = me
    ? !!(await db.prepare("SELECT 1 FROM bildirimler WHERE hedef_tur = 'kayit' AND hedef_id = ? AND user_id = ?").bind(r.id, me.id).first())
    : false;
  return c.json<Kayit>({
    ...kayitOzeti(r), description: r.description, kod: r.kod,
    benim: r.user_id === me?.id, bildirdim, silebilir: r.user_id === me?.id || yonetici,
  });
});

topluluk.post("/kayit", async (c) => {
  const me = uye(c);
  if (!me) return c.json(GIRIS, 401);
  const db = c.env.DB;
  if (!(await kayitPaylasimiAcik(db))) return c.json({ error: "Kayıt paylaşımı şu an kapalı." }, 403);
  const g = await govde<KayitGirdi>(c);
  const h = kayitHatasi(g) ?? (await yayimlayabilir(db, me));
  if (h) return c.json({ error: h }, 400);
  if (!(await db.prepare("SELECT 1 FROM topics WHERE id = ?").bind(g.topicId).first())) return c.json({ error: "Böyle bir konu yok." }, 400);
  const say = await db.prepare("SELECT COUNT(*) AS n FROM kayitlar WHERE user_id = ? AND created_at > ?")
    .bind(me.id, Date.now() - GUN)
    .first<{ n: number }>();
  if ((say?.n ?? 0) >= GUNLUK_KAYIT) return c.json({ error: `Günde en fazla ${GUNLUK_KAYIT} kayıt yayımlayabilirsin.` }, 429);
  const id = crypto.randomUUID().slice(0, 12);
  await db.prepare("INSERT INTO kayitlar (id, user_id, topic_id, title, description, kod, created_at) VALUES (?, ?, ?, ?, ?, ?, ?)")
    .bind(id, me.id, g.topicId, g.title!.trim(), g.description!.trim(), g.kod, Date.now())
    .run();
  return c.json({ id });
});

export function kayitSilSorgulari(db: D1Database, kosul: string, deger: string): D1PreparedStatement[] {
  return [
    db.prepare(`DELETE FROM bildirimler WHERE hedef_tur = 'kayit' AND hedef_id IN (SELECT id FROM kayitlar WHERE ${kosul})`).bind(deger),
    db.prepare(`DELETE FROM kayit_begeni WHERE kayit_id IN (SELECT id FROM kayitlar WHERE ${kosul})`).bind(deger),
    db.prepare(`DELETE FROM kayitlar WHERE ${kosul}`).bind(deger),
  ];
}

topluluk.delete("/kayit/:id", async (c) => {
  const me = uye(c);
  if (!me) return c.json(GIRIS, 401);
  const db = c.env.DB;
  const r = await db.prepare("SELECT user_id FROM kayitlar WHERE id = ?").bind(c.req.param("id")).first<{ user_id: string }>();
  if (!r) return c.json({ error: "Bu kayıt bulunamadı." }, 404);
  const yonetici = r.user_id !== me.id && yetkisiVar(me, "bildirim.yonet");
  if (r.user_id !== me.id && !yonetici) return c.json({ error: "Bunu yalnızca sahibi silebilir." }, 403);
  await db.batch([
    ...kayitSilSorgulari(db, "id = ?", c.req.param("id")),
    ...(yonetici
      ? [db.prepare("INSERT INTO admin_log (user_id, action, target, detail, created_at) VALUES (?, 'kayit.sil', ?, NULL, ?)").bind(me.id, c.req.param("id"), Date.now())]
      : []),
  ]);
  return c.json({ ok: true });
});

topluluk.post("/kayit/:id/begen", async (c) => {
  const me = uye(c);
  if (!me) return c.json(GIRIS, 401);
  const db = c.env.DB;
  const id = c.req.param("id");
  if (!(await db.prepare("SELECT 1 FROM kayitlar WHERE id = ? AND (hidden = 0 OR user_id = ?)").bind(id, me.id).first())) {
    return c.json({ error: "Bu kayıt bulunamadı." }, 404);
  }
  const sil = await db.prepare("DELETE FROM kayit_begeni WHERE kayit_id = ? AND user_id = ?").bind(id, me.id).run();
  if (!sil.meta.changes) await db.prepare("INSERT INTO kayit_begeni (kayit_id, user_id) VALUES (?, ?)").bind(id, me.id).run();
  const n = await db.prepare("SELECT COUNT(*) AS n FROM kayit_begeni WHERE kayit_id = ?").bind(id).first<{ n: number }>();
  return c.json({ begeni: n?.n ?? 0, benBegendim: !sil.meta.changes });
});

// ---- Bildirim ----

const HEDEF: Record<BildirimTuru, string> = { kayit: "kayitlar" };

topluluk.post("/bildir", async (c) => {
  const me = uye(c);
  if (!me) return c.json(GIRIS, 401);
  const db = c.env.DB;
  const b = await govde<{ tur: BildirimTuru; id: string; neden: string }>(c);
  const h = bildirimHatasi(b);
  if (h) return c.json({ error: h }, 400);
  const tablo = HEDEF[b.tur!];
  const hedef = await db.prepare(`SELECT user_id FROM ${tablo} WHERE id = ?`).bind(b.id).first<{ user_id: string }>();
  if (!hedef) return c.json({ error: "Bildirilen içerik bulunamadı." }, 404);
  if (hedef.user_id === me.id) return c.json({ error: "Kendi içeriğini bildiremezsin." }, 400);
  const say = await db.prepare("SELECT COUNT(*) AS n FROM bildirimler WHERE user_id = ? AND created_at > ?")
    .bind(me.id, Date.now() - GUN)
    .first<{ n: number }>();
  if ((say?.n ?? 0) >= 20) return c.json({ error: "Günde en fazla 20 bildirim gönderebilirsin." }, 429);
  await db.prepare("INSERT OR IGNORE INTO bildirimler (user_id, hedef_tur, hedef_id, neden, created_at) VALUES (?, ?, ?, ?, ?)")
    .bind(me.id, b.tur, b.id, b.neden!.trim(), Date.now())
    .run();
  // Eşiği geçen içerik yönetici bakana kadar gizlenir
  await db.prepare(
    `UPDATE ${tablo} SET hidden = 1 WHERE id = ?1 AND hidden = 0 AND
       (SELECT COUNT(DISTINCT user_id) FROM bildirimler WHERE hedef_tur = ?2 AND hedef_id = ?1 AND cozuldu = 0) >= ?3`,
  )
    .bind(b.id, b.tur, BILDIRIM_ESIGI)
    .run();
  return c.json({ ok: true });
});

export { topluluk };
