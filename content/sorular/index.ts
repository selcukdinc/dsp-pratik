import type { Konu, Soru } from "./tipler.ts";
import { hafta1 } from "./hafta-1.ts";
import { ekHafta1 } from "./ek-hafta-1.ts";
import { hafta2 } from "./hafta-2.ts";
import { ekHafta2 } from "./ek-hafta-2.ts";
import { hafta3 } from "./hafta-3.ts";
import { ekHafta3 } from "./ek-hafta-3.ts";

// Konular haftalara bölünür; her hafta kendi konularını ve soru dosyalarını ekler.
export const konular: Konu[] = [
  { id: "dsp-giris", baslik: "DSP'ye giriş: sürekli ve ayrık sinyaller", hafta: 1, sira: 1 },
  { id: "istatistik", baslik: "Ortalama, standart sapma ve rms", hafta: 1, sira: 2 },
  { id: "olasilik", baslik: "Histogram, pmf, pdf ve normal dağılım", hafta: 1, sira: 3 },
  { id: "gurultu-dogruluk", baslik: "Gürültü üretimi, kesinlik ve doğruluk", hafta: 1, sira: 4 },
  { id: "matlab-temel", baslik: "MATLAB: betik, vektör ve indeksleme", hafta: 2, sira: 1 },
  { id: "matlab-matris", baslik: "MATLAB: matrisler ve işlemler", hafta: 2, sira: 2 },
  { id: "matlab-fonksiyon", baslik: "MATLAB: işleçler, fonksiyonlar ve rastgele sayılar", hafta: 2, sira: 3 },
  { id: "matlab-istatistik", baslik: "MATLAB: birleştirme ve istatistik fonksiyonları", hafta: 2, sira: 4 },
  { id: "ayrik-diziler", baslik: "Temel diziler, üstel ve sinüzoidal diziler", hafta: 3, sira: 1 },
  { id: "sinyal-islemleri", baslik: "Simetri, dönüşümler, enerji ve güç", hafta: 3, sira: 2 },
  { id: "ayrik-sistemler", baslik: "Ayrık zamanlı sistemler ve LTI", hafta: 3, sira: 3 },
];

// ek-* dosyaları türetilen sorulardır; yedek olanlar havuzda görünmez, tekrarda gelir
export const sorular: Soru[] = [...hafta1, ...hafta2, ...hafta3, ...ekHafta1, ...ekHafta2, ...ekHafta3];
