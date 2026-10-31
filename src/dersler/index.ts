// Haftaların ders sayfaları. Her ders kısa anlatımlar, etkileşimli şekiller,
// tarayıcıda çalışan MATLAB örnekleri ve soru havuzundan seçilmiş bir konu sonu testi içerir.

import type { Ders } from "./tipler";
import { HAFTA_1 } from "./hafta-1";
import { HAFTA_2 } from "./hafta-2";

export const DERSLER: Ders[] = [HAFTA_1, HAFTA_2];

export const dersBul = (hafta: number) => DERSLER.find((d) => d.hafta === hafta);
