// Her soru tek bir kavrama bağlanır (sorunun kavram alanı). Aralıklı tekrarda bir
// soruyu yanlış yapan kişiye aynı kavramdan henüz çözmediği sorular da eklenir.
// Kavramlar konulardan daha dardır ve haftaları aşabilir (ör. konvolüsyon 4. ve
// 7. haftada). Her hafta kendi kavramlarını ekler.

export interface Kavram {
  ad: string;
}

export const KAVRAMLAR: Record<string, Kavram> = {};
