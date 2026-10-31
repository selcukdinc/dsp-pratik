// /topluluk: laboratuvar kayıtları. Üyelerin paylaştığı MATLAB betikleri:
// liste, kayıt sayfası ve yeni kayıt. Betikler tarayıcıda çalışır; resmi
// ilerlemeye sayılmaz.

import { useEffect, useId, useState } from "react";
import { api } from "../lib/api";
import { href, navigate } from "../lib/router";
import { uye, useOturum } from "../lib/oturum";
import { Markdown } from "../components/Markdown";
import { FormHatasi } from "../components/Form";
import { BildirDugmesi } from "../components/Bildir";
import { KodGoster, KodYaz, matlabdaAc } from "../components/KayitKodu";
import { kayitHatasi, KOD_SINIRI, type Kayit, type KayitOzeti } from "../../shared/topluluk";
import type { Topic } from "../../shared/api";

const tarih = (ms: number) => new Date(ms).toLocaleDateString("tr-TR", { day: "numeric", month: "short", year: "numeric" });

function oku(anahtar: string): string | null {
  try {
    return localStorage.getItem(anahtar);
  } catch {
    return null;
  }
}
function yaz(anahtar: string, deger: string | null) {
  try {
    if (deger === null) localStorage.removeItem(anahtar);
    else localStorage.setItem(anahtar, deger);
  } catch {
    // kaydedilemezse sayfa açık kaldıkça bellekte durur
  }
}

function useKonular() {
  const [konular, setKonular] = useState<Topic[]>([]);
  useEffect(() => {
    api.topics().then((r) => setKonular(r.topics), () => {});
  }, []);
  return konular;
}

function Rozetler({ k }: { k: KayitOzeti }) {
  return (
    <span className="tb-rozetler">
      <span title="Beğeni">★ {k.begeni}</span>
      {k.gizli && <span className="tag durum-rejected">bildirimler yüzünden gizlendi</span>}
    </span>
  );
}

// ---- Liste ----

export function Topluluk({ konu }: { konu?: string }) {
  const { me } = useOturum();
  const konular = useKonular();
  const [sira, setSira] = useState("yeni");
  const [liste, setListe] = useState<KayitOzeti[] | null>(null);

  useEffect(() => {
    setListe(null);
    api.topluluk.kayitlar({ konu, sira: sira === "begeni" ? "begeni" : undefined }).then(setListe, () => setListe([]));
  }, [konu, sira]);

  return (
    <div className="topluluk">
      <p>
        Üyelerin paylaştığı MATLAB betikleri: bir sinyali çizen, bir filtreyi deneyen ya da bir sonucu doğrulayan kısa
        çalışmalar. Birini aç, MATLAB alanında çalıştır ve değiştir. Betikler senin tarayıcında çalışır; resmi ilerlemene
        sayılmaz.
      </p>
      <div className="filtreler">
        <select aria-label="Konu" value={konu ?? ""} onChange={(e) => navigate({ page: "topluluk", konu: e.target.value || undefined }, { replace: true })}>
          <option value="">Tüm konular</option>
          {konular.map((k) => <option key={k.id} value={k.id}>H{k.week} · {k.title}</option>)}
        </select>
        <select aria-label="Sıralama" value={sira} onChange={(e) => setSira(e.target.value)}>
          <option value="yeni">En yeni</option>
          <option value="begeni">En çok beğenilen</option>
        </select>
        {uye(me) ? (
          <a className="buton primary" href={href({ page: "topluluk-kayit", id: "yeni" })}>+ Kayıt paylaş</a>
        ) : (
          <span className="hint">Kayıt paylaşmak için <a href={href({ page: "giris", sonra: "/topluluk/yeni" })}>giriş yap</a>.</span>
        )}
      </div>
      {!liste ? (
        <p className="empty">Yükleniyor…</p>
      ) : liste.length === 0 ? (
        <p className="empty">Bu konuda henüz laboratuvar kaydı yok. İlkini sen paylaşabilirsin.</p>
      ) : (
        <ul className="tb-listesi">
          {liste.map((k) => (
            <li key={k.id}>
              <a className="tb-baslik" href={href({ page: "topluluk-kayit", id: k.id })}>{k.title}</a>
              <div className="hint">
                {k.topicTitle} · {k.username ? `@${k.username}` : "silinmiş hesap"} · {tarih(k.createdAt)}
              </div>
              <Rozetler k={k} />
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}

// ---- Kayıt sayfası ----

function KayitSayfasi({ id }: { id: string }) {
  const { me } = useOturum();
  const [k, setK] = useState<Kayit | null>(null);
  const [yok, setYok] = useState(false);
  const [hata, setHata] = useState<string | null>(null);

  useEffect(() => {
    api.topluluk.kayit(id).then(setK, () => setYok(true));
  }, [id]);

  if (yok) return <p className="empty">Bu kayıt bulunamadı. <a href="/topluluk">Listeye dön</a></p>;
  if (!k) return <p className="empty">Yükleniyor…</p>;

  const begen = async () => {
    const r = await api.topluluk.begen(k.id);
    if (!r.ok) return setHata(r.hata.error);
    setK({ ...k, ...r.data });
  };
  const sil = async () => {
    if (!confirm(`"${k.title}" silinsin mi? Beğeniler de silinir.`)) return;
    const r = await api.topluluk.sil(k.id);
    if (!r.ok) return setHata(r.hata.error);
    navigate({ page: "topluluk", konu: k.topicId });
  };

  return (
    <div className="tb-coz">
      <p><a href={href({ page: "topluluk", konu: k.topicId })}>← {k.topicTitle} kayıtları</a></p>
      <h2 className="tb-baslik">{k.title}</h2>
      <div className="tb-ust">
        <span className="hint">
          {k.username ? <a href={href({ page: "profil", ad: k.username })}>@{k.username}</a> : "silinmiş hesap"} · {tarih(k.createdAt)}
        </span>
        <Rozetler k={k} />
        {uye(me) && (
          <button className={k.benBegendim ? "primary" : undefined} onClick={begen} aria-pressed={k.benBegendim}>
            {k.benBegendim ? "★ Beğendin" : "☆ Beğen"}
          </button>
        )}
        {uye(me) && !k.benim && <BildirDugmesi tur="kayit" id={k.id} bildirdim={k.bildirdim} />}
        {k.silebilir && <button className="tehlike" onClick={sil}>Sil</button>}
      </div>
      {k.description && <Markdown text={k.description} />}
      <KodGoster kod={k.kod} />
      <div className="form-dugmeler">
        <button className="primary" onClick={() => matlabdaAc(k.kod)}>MATLAB alanında aç</button>
      </div>
      <FormHatasi hata={hata} />
    </div>
  );
}

// ---- Yeni kayıt ----

const TASLAK = "dsp-pratik:kayit-taslak";

const ORNEK_KOD = `% Gürültülü bir sinüs ve histogramı
n = 0:199;
x = sin(2*pi*0.02*n) + 0.3*randn(1, 200);
subplot(2, 1, 1)
plot(n, x)
title('x[n]')
subplot(2, 1, 2)
histogram(x, 20)
title('Histogram')
`;

interface Taslak {
  topicId: string;
  title: string;
  description: string;
  kod: string;
}

function taslakOku(): Taslak {
  try {
    const t = oku(TASLAK);
    if (t) return JSON.parse(t) as Taslak;
  } catch {
    // bozuk taslak: örnekle başla
  }
  return { topicId: "", title: "", description: "", kod: ORNEK_KOD };
}

function KayitYeni() {
  const { me, yuklendi } = useOturum();
  const konular = useKonular();
  const [t, setT] = useState<Taslak>(taslakOku);
  const [mesgul, setMesgul] = useState(false);
  const [hata, setHata] = useState<string | null>(null);
  const baslikId = useId();
  const aciklamaId = useId();
  const konuId = useId();

  useEffect(() => yaz(TASLAK, JSON.stringify(t)), [t]);
  useEffect(() => {
    if (!t.topicId && konular.length) setT((x) => ({ ...x, topicId: konular.at(-1)!.id }));
  }, [konular, t.topicId]);

  if (!yuklendi) return null;
  if (!uye(me)) {
    return <p className="empty">Kayıt paylaşmak için <a href={href({ page: "giris", sonra: "/topluluk/yeni" })}>giriş yap</a>.</p>;
  }

  const ayarla = (p: Partial<Taslak>) => setT({ ...t, ...p });
  const yayimla = async () => {
    setHata(null);
    const h = kayitHatasi(t);
    if (h) return setHata(h);
    setMesgul(true);
    const r = await api.topluluk.yayimla(t);
    setMesgul(false);
    if (!r.ok) return setHata(r.hata.error);
    yaz(TASLAK, null);
    navigate({ page: "topluluk-kayit", id: r.data.id });
  };

  return (
    <div className="tb-yeni soru-form">
      <p><a href="/topluluk">← Laboratuvar kayıtları</a></p>
      <p>
        Kısa bir MATLAB betiği paylaş ve ne yaptığını açıklamaya yaz. Ödevlerin hazır çözümünü paylaşma; böyle kayıtlar
        bildirilip kaldırılır.
      </p>
      <div className="etiketli">
        <label htmlFor={konuId}>Konu</label>
        <select id={konuId} value={t.topicId} onChange={(e) => ayarla({ topicId: e.target.value })}>
          {konular.map((k) => <option key={k.id} value={k.id}>H{k.week} · {k.title}</option>)}
        </select>
      </div>
      <div className="etiketli tam">
        <label htmlFor={baslikId}>Başlık</label>
        <input id={baslikId} maxLength={100} value={t.title} onChange={(e) => ayarla({ title: e.target.value })} placeholder="ör. Hareketli ortalamayla gürültü azaltma" />
      </div>
      <div className="etiketli tam">
        <label htmlFor={aciklamaId}>Açıklama</label>
        <textarea id={aciklamaId} rows={3} maxLength={2000} value={t.description} onChange={(e) => ayarla({ description: e.target.value })} />
      </div>
      <KodYaz kod={t.kod} onChange={(kod) => ayarla({ kod })} />
      <p className="hint">{t.kod.length} / {KOD_SINIRI} karakter</p>
      <div className="form-dugmeler">
        <button onClick={() => matlabdaAc(t.kod)}>MATLAB alanında dene</button>
        <button className="primary" onClick={yayimla} disabled={mesgul || !t.title.trim()}>Yayımla</button>
      </div>
      <FormHatasi hata={hata} />
    </div>
  );
}

export function ToplulukKayit({ id }: { id: string }) {
  return id === "yeni" ? <KayitYeni /> : <KayitSayfasi key={id} id={id} />;
}
