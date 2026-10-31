// Haftaların ders sayfaları. Her ders kısa anlatımlar, etkileşimli şekiller,
// tarayıcıda çalışan MATLAB örnekleri ve soru havuzundan seçilmiş bir konu sonu testi içerir.

import type { Ders } from "./tipler";

export const DERSLER: Ders[] = [];

export const dersBul = (hafta: number) => DERSLER.find((d) => d.hafta === hafta);
