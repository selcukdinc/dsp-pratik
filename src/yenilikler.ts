// Sitedeki yenilikler, en yenisi en üstte. Kullanıcıya görünen her değişiklik
// (her PR) buraya bir kayıt ekler; yenilikler.test.ts sırayı ve biçimi denetler.
// Maddeler kullanıcının diliyle yazılır: ne değişti, sana ne kazandırır.
// Markdown alt kümesi kullanılabilir (`kod`, **kalın**).

export interface Yenilik {
  // Değişikliği getiren PR'ın numarası; kaydın kimliği de budur
  pr: number;
  // YYYY-AA-GG
  tarih: string;
  baslik: string;
  maddeler: string[];
}

export const YENILIKLER: Yenilik[] = [
  {
    pr: 1,
    tarih: "2026-10-31",
    baslik: "DSP Pratik açılıyor",
    maddeler: [
      "Sayısal sinyal işleme dersi için yeni pratik sitesi kuruldu: haftalık dersler, soru havuzu, aralıklı tekrar, ilerleme sayfası ve soru önerme burada.",
      "Yeni soru türü: **Sayısal**. Sonucu sen hesaplayıp yazıyorsun; `0,5`, `1/2`, `pi/4` ya da `sqrt(2)/2` gibi yazımlar kabul ediliyor, küçük yuvarlama farkları doğru sayılıyor. Dizi isteyen sorularda değerleri MATLAB'daki gibi `[1 2 -1]` biçiminde yazıyorsun.",
      "Ders ve soru metinlerinde formüller artık düzgün matematik yazısıyla görünüyor.",
      "Topluluk bölümü **Laboratuvar kayıtları** oldu: üyeler kısa MATLAB betiklerini paylaşıp beğenebiliyor.",
    ],
  },
];
