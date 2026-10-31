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
    pr: 2,
    tarih: "2026-10-31",
    baslik: "MATLAB alanı açıldı",
    maddeler: [
      "**MATLAB alanı** tarayıcında çalışıyor: editör, şekil penceresi, komut penceresi ve çalışma alanı. Pencereleri sürükleyip boyutlandırabilir, düzenini kaydedebilirsin.",
      "Vektörler, matrisler, indeksleme, `for`, `while`, `if`, `switch`, kendi fonksiyonların ve anonim fonksiyonlar destekleniyor. `sum`, `mean`, `std`, `conv`, `filter`, `fft`, `freqz` gibi fonksiyonlarla `plot`, `stem`, `histogram`, `bar` ve `subplot` ile çizim var.",
      "Hatalar Türkçe ve satır numarasıyla gösteriliyor; ör. `x(0)` yazınca MATLAB'da indislerin 1'den başladığını hatırlatıyor.",
      "**Örnekler** menüsünde sinüs çizimi, histogram, örtüşme, konvolüsyon, hareketli ortalama, Fourier serisi, FFT ve frekans yanıtı hazır betikleri var. Betiklerini `.m` dosyası olarak indirip yükleyebilirsin.",
      "Derslerdeki MATLAB örnekleri sayfanın içinde çalışıyor; laboratuvar kayıtlarını tek tıkla MATLAB alanında açabiliyorsun.",
    ],
  },
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
