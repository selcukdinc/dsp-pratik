import { describe, expect, it } from "vitest";
import { DERSLER } from "./index";
import { sorular } from "../../content/sorular/index";
import { gorselBul } from "../gorseller";
import { KAVRAM_BOLUMU, soruBolumu } from "./bolumBul";
import { Yorumlayici } from "../matlab/yorumla";

describe("dersler", () => {
  const kimlikler = new Map(sorular.map((s) => [s.id, s]));
  it("testlerdeki her soru havuzda var ve dersin haftasında", () => {
    for (const d of DERSLER) {
      for (const id of d.test) {
        const s = kimlikler.get(id);
        expect(s, id).toBeDefined();
        expect(s!.hafta <= d.hafta, id).toBe(true);
      }
    }
  });
  it("Kendini dene soruları havuzda, yedek değil ve konu sonu testinde yok", () => {
    for (const d of DERSLER) {
      const goruldu = new Set(d.test);
      for (const b of d.bolumler)
        for (const id of b.dene ?? []) {
          const s = kimlikler.get(id);
          expect(s, id).toBeDefined();
            expect(s!.yedek ?? false, id).toBe(false);
          expect(s!.hafta <= d.hafta, id).toBe(true);
          expect(goruldu.has(id), `${id} iki kez`).toBe(false);
          goruldu.add(id);
        }
    }
  });
  it("her MatStudio örneği tarayıcıdaki yorumlayıcıda hatasız çalışır", () => {
    for (const d of DERSLER)
      for (const b of d.bolumler) {
        if (!b.matlab) continue;
        const y = new Yorumlayici({ tohum: 0 });
        expect(y.calistir(b.matlab.kod).hata, `${d.hafta}. hafta, ${b.baslik}`).toBeNull();
      }
  });

  // Ders bir diziyi çözdüyse aynı dizi soruda sorulmaz: öğrenci kuralı uygulamalı,
  // cevabı dersten hatırlamamalı. Üç ve daha fazla sayılık diziler ("[1 2 -1]",
  // "{1, 2, 3}") çözümlü örneklerde ve şekil açıklamalarında aranır.
  it("ders metni ve örnekleri soruların dizilerini önceden çözmez", () => {
    const DIZI = /[[{]\s*-?\d+(?:\.\d+)?(?:\s*[,;\s]\s*-?\d+(?:\.\d+)?){2,}\s*[\]}]/g;
    const ORNEK = /^> \*\*Çözümlü örnek.*(?:\n>.*)*/gm;
    const bul = (t: string) => new Set([...t.matchAll(DIZI)].map((m) => m[0].replace(/[[\]{}]/g, "").trim().split(/[\s,;]+/).join(" ")));
    const cakisan: string[] = [];
    for (const d of DERSLER) {
      const parcalar: string[] = [];
      for (const b of d.bolumler) {
        parcalar.push(...[...b.metin.matchAll(ORNEK)].map((m) => m[0]));
        for (const m of b.metin.matchAll(/\[\[(G-H\d+-\d+)\]\]/g)) parcalar.push(gorselBul(m[1]!)?.aciklama ?? "");
      }
      const dersDizileri = bul(parcalar.join("\n"));
      for (const s of sorular) {
        if (s.hafta !== d.hafta) continue;
        for (const t of bul(s.soru)) if (dersDizileri.has(t)) cakisan.push(`${s.id}: ${t}`);
      }
    }
    expect(cakisan).toEqual([]);
  });

  // Boşluk doldurma sorularının cevabı (ilk kabul edilen yazım) o haftaya kadarki
  // ders metinlerinde geçer: öğrenci cevabı dersten öğrenebilmeli.
  it("boşluk doldurma cevapları ders metninde geçiyor", () => {
    const metin = (h: number) =>
      DERSLER.filter((d) => d.hafta <= h)
        .flatMap((d) => d.bolumler.map((b) => `${b.metin}\n${b.matlab?.kod ?? ""}`))
        .join("\n")
        .toLocaleLowerCase("tr");
    const eksik: string[] = [];
    for (const s of sorular) {
      if (s.tip !== "fill") continue;
      const m = metin(s.hafta);
      for (const secenekler of s.bosluklar) if (!secenekler.some((o) => m.includes(o.toLocaleLowerCase("tr")))) eksik.push(`${s.id}: ${secenekler[0]}`);
    }
    expect(eksik).toEqual([]);
  });

  it("her sorunun kavramı kendi haftasının bir ders bölümüne bağlı", () => {
    const eksik: string[] = [];
    for (const s of sorular) {
      const kavram = s.kavram;
      const b = soruBolumu({ id: s.id, week: s.hafta, kavram });
      if (!b || b.bolum === null) eksik.push(`${s.id} (${s.hafta}, ${kavram})`);
    }
    expect(eksik).toEqual([]);
    for (const [h, harita] of Object.entries(KAVRAM_BOLUMU)) {
      const d = DERSLER.find((x) => x.hafta === Number(h))!;
      for (const i of Object.values(harita)) expect(d.bolumler[i], `${h}. hafta ${i}. bölüm`).toBeDefined();
    }
  });
});
