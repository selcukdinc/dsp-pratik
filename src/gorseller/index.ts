// Ders şekilleri. Hepsi bizim çizimimizdir; hocanın sunumlarından görsel alınmaz.
// Ders metninde tek başına bir paragraf olarak [[G-H1-01]] yazılınca şekil o yere konur.
// Kod biçimi: G-H<hafta>-<sıra>. Bir şekli düzeltmek isteyen kodunu söyler; kodlar
// değiştirilmez, silinen bir şeklin kodu yeniden kullanılmaz.

import type { Gorsel } from "./tip";

export type { Gorsel } from "./tip";

export const GORSELLER: Gorsel[] = [];

export const gorselBul = (kod: string) => GORSELLER.find((g) => g.kod === kod);

// Ders metnindeki şekil satırları: tek başına bir paragraf olan [[G-H1-01]]
export const SEKIL_DESENI = /^\[\[(G-H\d+-\d+)\]\]$/;
