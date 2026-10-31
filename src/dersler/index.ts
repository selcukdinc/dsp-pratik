// Haftaların ders sayfaları. Her ders kısa anlatımlar, etkileşimli şekiller,
// tarayıcıda çalışan MATLAB örnekleri ve soru havuzundan seçilmiş bir konu sonu testi içerir.

import type { Ders } from "./tipler";
import { HAFTA_1 } from "./hafta-1";
import { HAFTA_2 } from "./hafta-2";
import { HAFTA_3 } from "./hafta-3";
import { HAFTA_4 } from "./hafta-4";
import { HAFTA_5 } from "./hafta-5";
import { HAFTA_6 } from "./hafta-6";
import { HAFTA_7 } from "./hafta-7";
import { HAFTA_8 } from "./hafta-8";

export const DERSLER: Ders[] = [HAFTA_1, HAFTA_2, HAFTA_3, HAFTA_4, HAFTA_5, HAFTA_6, HAFTA_7, HAFTA_8];

export const dersBul = (hafta: number) => DERSLER.find((d) => d.hafta === hafta);
