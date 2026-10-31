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
    pr: 9,
    tarih: "2026-10-31",
    baslik: "7. hafta: ayrık Fourier dönüşümü (DFT)",
    maddeler: [
      "**7. hafta dersi** açıldı. Konular: ayrık Fourier serisi, DFT ve ters DFT, DFT'nin DTFT'nin örnekleri olması, frekans ekseni ve sıfır doldurma, doğrusallık, eşlenik simetri ve Parseval, dairesel kaydırma, dairesel konvolüsyon ve doğrusal konvolüsyonla ilişkisi, DFT ile konvolüsyon, örtüşme-ekleme ve örtüşme-kaydetme.",
      "Etkileşimli şekillerin bazıları: sıfır doldurdukça DFT noktalarının aynı DTFT eğrisi üzerinde sıklaşmasını görme, taban üstelleri birim çemberde döndürme, diziyi çember üzerinde dairesel kaydırma, iç içe iki çemberle dairesel konvolüsyonu adım adım hesaplama, N'yi değiştirip zamanda örtüşmenin nasıl kaybolduğunu izleme.",
      "Soru havuzuna 7. hafta için 45 soru eklendi; tekrarda çıkacak 14 ek soru da hazır.",
    ],
  },
  {
    pr: 8,
    tarih: "2026-10-31",
    baslik: "6. hafta: frekans yanıtı ve DTFT",
    maddeler: [
      "**6. hafta dersi** açıldı. Konular: karmaşık üstellerin LTI sistemlerin özfonksiyonları olması ve frekans yanıtı; büyüklük, desibel ölçeği, faz ve grup gecikmesi; periyodiklik ve simetri; doğrusal faz, tam geçiren ve frekans seçici filtreler; kaskat ve paralel bağlantılar; DTFT, özellikleri (kaydırma, modülasyon, konvolüsyon teoremi, Parseval) ve ters sistem.",
      "Etkileşimli şekillerin bazıları: bir kosinüsün frekansını değiştirip sistemden nasıl geçtiğini görme, dört örnek sistemin büyüklük, dB ve faz grafikleri, doğrusal faz ile tam geçireni grup gecikmesinden ayırma, alçak ve yüksek geçireni bağlayıp bant geçiren ve bant durduran kurma, modülasyonla spektrumu kaydırma.",
      "Soru havuzuna 6. hafta için 40 soru eklendi; tekrarda çıkacak 12 ek soru da hazır.",
    ],
  },
  {
    pr: 7,
    tarih: "2026-10-31",
    baslik: "5. hafta: Fourier analizi",
    maddeler: [
      "**5. hafta dersi** açıldı. Konular: sinüsün dönen bir noktanın izdüşümü olması; genlik, frekans ve faz; sinüslerin toplamı; kare, üçgen ve testere dalganın Fourier serisi ve Gibbs olayı; periyodik olmayan sinyallerin spektrumu; sarma makinesi, Euler formülü ve Fourier dönüşümü.",
      "Etkileşimli şekillerin bazıları: çember üzerinde noktayı döndürüp sinüsü çizme, harmonik ekleyerek kare ve üçgen dalga kurma, darbe süresiyle spektrumun genişliğini değiştirme ve **sarma makinesi**: sarma frekansını değiştirip kütle merkezinin sinyalin frekansında nasıl sıçradığını görme.",
      "Soru havuzuna 5. hafta için 40 soru eklendi; tekrarda çıkacak 12 ek soru da hazır.",
    ],
  },
  {
    pr: 6,
    tarih: "2026-10-31",
    baslik: "4. hafta: konvolüsyon",
    maddeler: [
      "**4. hafta dersi** açıldı. Konular: konvolüsyon toplamı; değişme, birleşme ve dağılma özellikleri (kaskat ve paralel sistemler); kapalı formlu dizilerde doğrudan hesap; çıkışın uzunluğu ve konumu; grafik yöntem, kaydırma kuralı ve çarpım tablosu; zarlarla olasılık dağılımları, hareketli ortalama ve korelasyon.",
      "Etkileşimli şekillerin bazıları: çıkışı giriş örneklerinin katkılarını tek tek ekleyerek kurma, **grafik yöntemi adım adım** izleme (ters çevir, kaydır, çarp, topla), kaydırma kuralı şeridini kaydırma, çarpım tablosunda köşegen seçme, zar sayısını ve hileli zarı değiştirip toplamın dağılımını görme, hareketli ortalamanın pencere uzunluğuyla oynama.",
      "Soru havuzuna 4. hafta için 49 soru eklendi; tekrarda çıkacak 20 ek soru da hazır.",
    ],
  },
  {
    pr: 5,
    tarih: "2026-10-31",
    baslik: "3. hafta: ayrık zamanlı sinyaller ve sistemler",
    maddeler: [
      "**3. hafta dersi** açıldı. Konular: birim dürtü, basamak ve rampa; üstel, karmaşık üstel ve sinüzoidal diziler ve periyodiklik; çift ve tek kısımlar; kaydırma, ters çevirme ve ölçekleme; enerji ve güç; diziyi dürtülerle yazma; sistem özellikleri ve LTI sistemler.",
      "Etkileşimli şekillerin bazıları: temel dizileri kaydırma, aⁿ dizisini a ile değiştirme, karmaşık üstelde σ ve ω₀ ile oynama ve y(n) = x(kn − n₀) dönüşümünü adım adım görme. Bir de **sistem tezgâhı** var: sekiz örnek sistemden birini seçince hangi özellikleri neden sağladığını gösteriyor.",
      "Soru havuzuna 3. hafta için 40 soru eklendi; tekrarda çıkacak 19 ek soru da hazır.",
    ],
  },
  {
    pr: 4,
    tarih: "2026-10-31",
    baslik: "2. hafta: MATLAB ile çalışmak",
    maddeler: [
      "**2. hafta dersi** açıldı. Konular: betik yazma, vektör ve matris kurma, indeksleme ve doğrusal indeks, eleman eleman ve matris işlemleri, ilişkisel ve mantıksal işleçler, fonksiyon yazma, rastgele sayılar, dizi birleştirme ve istatistik fonksiyonları.",
      "Etkileşimli şekillerde bir indeksleme ifadesi seçip vektörden ya da matristen hangi elemanların alındığını görebilirsin. `mean`, `median`, `std` ve `var` için boyutu ve ağırlığı değiştirip sonucu karşılaştırabilirsin.",
      "MATLAB alanına yeni fonksiyonlar eklendi: `cat`, `vertcat`, `corrcoef`, `randperm`, `who` ve `whos`. `mean`, `std`, `var`, `median`, `sum`, `max` ve `min` artık `'all'` seçeneğini de kabul ediyor.",
      "Soru havuzuna 2. hafta için 46 soru eklendi; tekrarda çıkacak 20 ek soru da hazır.",
    ],
  },
  {
    pr: 3,
    tarih: "2026-10-31",
    baslik: "1. hafta: sinyaller ve istatistik",
    maddeler: [
      "**1. hafta dersi** açıldı: dijital sinyal işlemenin neden kullanıldığı, örnekleme ve niceleme, ortalama, standart sapma ve rms, histogram, pmf ve pdf, normal dağılım, rastgele sayılarla gürültü üretme, kesinlik ve doğruluk.",
      "Dersteki dokuz şeklin beşi etkileşimli. Bit sayısını ve örnekleme hızını değiştirerek ADC'yi deneyebilirsin. Dalga biçimini ve DC'yi değiştirerek μ, σ ve rms'i karşılaştırabilirsin. Örnek sayısını artırınca histogramın nasıl düzeldiğini, Gauss eğrisinin altındaki alanları ve rastgele sayıları toplayınca çan eğrisinin nasıl oluştuğunu görebilirsin.",
      "Her bölümde sayfanın içinde çalışan bir MATLAB örneği ve üzerinde deneyeceğin küçük bir görev var.",
      "Soru havuzuna 1. hafta için 43 soru eklendi; tekrarda çıkacak 19 ek soru da hazır. Çoğu sayısal: sonucu kendin hesaplayıp yazıyorsun.",
      "Düzeltme: Aynı sayfadaki birden çok MATLAB şeklinde eğrilerin ve çubukların bir kısmı kesik görünüyordu.",
    ],
  },
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
