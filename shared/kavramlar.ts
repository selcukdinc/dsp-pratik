// Her soru tek bir kavrama bağlanır (sorunun kavram alanı). Aralıklı tekrarda bir
// soruyu yanlış yapan kişiye aynı kavramdan henüz çözmediği sorular da eklenir.
// Kavramlar konulardan daha dardır ve haftaları aşabilir (ör. konvolüsyon 4. ve
// 7. haftada). Her hafta kendi kavramlarını ekler.

export interface Kavram {
  ad: string;
}

export const KAVRAMLAR: Record<string, Kavram> = {
  // Hafta 1
  "dsp-giris": { ad: "Dijital sinyal işlemenin üstünlükleri ve sınırları" },
  "adc-niceleme": { ad: "Örnekleme ve niceleme (ADC)" },
  "sinyal-eksen": { ad: "Sinyal grafiğinin eksenleri ve alanı" },
  "ortalama-sapma": { ad: "Ortalama, standart sapma ve varyans" },
  rms: { ad: "rms ve tepeden tepeye değer" },
  "histogram-pmf": { ad: "Histogram, pmf, pdf ve kutulama" },
  "normal-dagilim": { ad: "Normal dağılım" },
  "gurultu-uretimi": { ad: "Rastgele sayılarla gürültü üretimi" },
  "kesinlik-dogruluk": { ad: "Kesinlik ve doğruluk" },
};
