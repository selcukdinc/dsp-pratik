// Ders şekilleri. Hepsi bizim çizimimizdir; hocanın sunumlarından görsel alınmaz.
// Ders metninde tek başına bir paragraf olarak [[G-H1-01]] yazılınca şekil o yere konur.
// Kod biçimi: G-H<hafta>-<sıra>. Bir şekli düzeltmek isteyen kodunu söyler; kodlar
// değiştirilmez, silinen bir şeklin kodu yeniden kullanılmaz.

import type { Gorsel } from "./tip";
import { HAFTA_1_GORSELLERI } from "./hafta-1";
import { HAFTA_2_GORSELLERI } from "./hafta-2";
import { HAFTA_3_GORSELLERI } from "./hafta-3";
import { HAFTA_4_GORSELLERI } from "./hafta-4";
import { HAFTA_5_GORSELLERI } from "./hafta-5";
import { HAFTA_6_GORSELLERI } from "./hafta-6";
import { HAFTA_7_GORSELLERI } from "./hafta-7";
import { HAFTA_8_GORSELLERI } from "./hafta-8";
import { PROJE_GORSELLERI } from "./proje";

export type { Gorsel } from "./tip";

export const GORSELLER: Gorsel[] = [...HAFTA_1_GORSELLERI, ...HAFTA_2_GORSELLERI, ...HAFTA_3_GORSELLERI, ...HAFTA_4_GORSELLERI, ...HAFTA_5_GORSELLERI, ...HAFTA_6_GORSELLERI, ...HAFTA_7_GORSELLERI, ...HAFTA_8_GORSELLERI, ...PROJE_GORSELLERI];

export const gorselBul = (kod: string) => GORSELLER.find((g) => g.kod === kod);

// Ders metnindeki şekil satırları: tek başına bir paragraf olan [[G-H1-01]]
export const SEKIL_DESENI = /^\[\[(G-H\d+-\d+)\]\]$/;
