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
    pr: 15,
    tarih: "2026-10-31",
    baslik: "Çalıştırma çiplerini düzenleme",
    maddeler: [
      "Ders kod kutularındaki her çalıştırma çipinin bir × düğmesi var. Hatalı bir çalıştırmayı tek başına silebilir, öncekileri koruyabilirsin.",
      "Bir çipe sağ tıklayınca menü açılıyor: karşılaştır, o çalıştırmanın kodunu editöre yükle, adını değiştir (örneğin \"kare dalga\"), sola ya da sağa taşı, sil.",
      "Çipleri tutup sürükleyerek sıralarını değiştirebilirsin. Karşılaştırma varsayılan olarak şimdiki çipin solundakiyle yapılıyor.",
      "Klavyeyle de çalışıyor: Delete siler, Alt+← ve Alt+→ taşır, F2 adını değiştirir.",
    ],
  },
  {
    pr: 14,
    tarih: "2026-10-31",
    baslik: "Ders kodlarında çıktı karşılaştırma",
    maddeler: [
      "Derslerdeki kod kutuları her çalıştırmayı hatırlıyor. Bir değeri değiştirip yeniden çalıştırınca önceki çıktı yanda durur ve değişen satırlar vurgulanır; bir önceki yerine daha eski bir çalıştırmayı da seçebilirsin. Her sütunun üstünde o çalıştırmada kodda neyi değiştirdiğin yazar.",
      "**Örneğe dön** artık yalnızca kodu geri getiriyor, çıktılar yerinde kalıyor. Geçmişi temizlemek için yeni **Sıfırla** düğmesini kullan.",
      "1. haftada kutulama daha ayrıntılı anlatılıyor: kutu numarasının nasıl bulunduğu, alt sınırı sıfır olmayan aralıklar, kutu sayısının seçimi ve histogramdan pdf'e geçiş. Kutu sayısını ve örnek değeri değiştirebileceğin etkileşimli bir şekil ve üç yeni soru da eklendi.",
      "Vektör indeksleme şeklinde her ok ayrı renkte; x(end:-1:1) gibi kesişen oklar artık kolayca izleniyor.",
      "Hatalı satırı işaretleyen kırmızı zemin artık seçimi örtmüyor; o satırda da metin seçebilirsin.",
      "Ders ve soru metinlerinde art arda tekrar eden sözcükler düzeltildi (örneğin \"eleman eleman\" yerine \"eleman bazında\").",
    ],
  },
  {
    pr: 13,
    tarih: "2026-10-31",
    baslik: "Kod alanının yeni adı: MatStudio",
    maddeler: [
      "Tarayıcıda çalışan kod alanının adı artık **MatStudio**. Menüde, derslerde, sorularda ve yardım sayfalarında bu adı göreceksin.",
      "Değişen yalnızca ad: `.m` betiklerini yazmak, çalıştırmak, indirmek ve yüklemek eskisi gibi çalışıyor; kayıtlı betiklerin ve pencere düzenin yerinde duruyor.",
    ],
  },
  {
    pr: 11,
    tarih: "2026-10-31",
    baslik: "Proje rehberi",
    maddeler: [
      "Ders listesinin sonuna **Proje** sayfası eklendi. Dönem projesinin adımlarını sırayla anlatıyor: gürültü eklemek, spektrumdan filtre türüne karar vermek, FIR ve IIR filtreler, dalgacıkla gürültü giderme, başarım ölçütleri, istatistiksel öznitelikler ve rapor.",
      "Hazır çözüm yok; her adım için ilgili haftaya bağlantı kuran kısa bir açıklama ve tarayıcıda çalışan küçük bir yapı taşı var (elle pencereli FIR, Haar dalgacığıyla eşikleme, PSNR ve MSE hesabı, parçalara göre çarpıklık, basıklık ve entropi).",
      "Butterworth ile Chebyshev I filtreleri derece değiştirerek karşılaştırabileceğin etkileşimli bir şekil de var.",
    ],
  },
  {
    pr: 10,
    tarih: "2026-10-31",
    baslik: "8. hafta: hızlı Fourier dönüşümü (FFT)",
    maddeler: [
      "**8. hafta dersi** açıldı. Konular: doğrudan DFT'nin işlem yükü ve FFT'nin kazancı, zamanda seyreltme ve bölüm çarpanları, kelebek, 8 noktalı radix-2 akış diyagramı ve bit ters sırası, frekansta seyreltme, 2'nin kuvveti olmayan uzunluklar için karma N algoritması, FFT ile spektrum, hızlı konvolüsyon ve ters DFT.",
      "Etkileşimli şekillerin bazıları: N'yi büyütüp DFT ile FFT'nin çarpma sayılarını karşılaştırma, bölüm çarpanını değiştirip kelebeğin çıkışlarını karmaşık düzlemde görme, 8 noktalı FFT'nin ara değerlerini aşamalar boyunca izleme, karma N tablolarını kurma, iki sinüsün spektrumunu farklı FFT uzunluklarında inceleme.",
      "Derslerdeki MatStudio örnekleri arasında bit ters sıralı, yerinde çalışan bir radix-2 FFT de var; sonucunu `fft` ile karşılaştırabilirsin.",
      "Soru havuzuna 8. hafta için 41 soru eklendi; tekrarda çıkacak 13 ek soru da hazır.",
    ],
  },
  {
    pr: 9,
    tarih: "2026-10-31",
    baslik: "7. hafta: ayrık Fourier dönüşümü (DFT)",
    maddeler: [
      "**7. hafta dersi** açıldı. Konular: ayrık Fourier serisi, DFT ve ters DFT, DFT'nin DTFT'nin örnekleri olması, frekans ekseni ve sıfır doldurma, doğrusallık, eşlenik simetri ve Parseval, dairesel kaydırma, dairesel konvolüsyon ve doğrusal konvolüsyonla ilişkisi, DFT ile konvolüsyon, örtüşme-ekleme ve örtüşme-kaydetme.",
      "Etkileşimli şekillerin bazıları: sıfır doldurdukça DFT noktalarının aynı DTFT eğrisi üzerinde sıklaşmasını görme, taban üstelleri birim çemberde döndürme, diziyi çember üzerinde dairesel kaydırma, iç içe iki çemberle dairesel konvolüsyonu sırayla hesaplama, N'yi değiştirip zamanda örtüşmenin nasıl kaybolduğunu izleme.",
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
      "Etkileşimli şekillerin bazıları: çıkışı giriş örneklerinin katkılarını sırayla ekleyerek kurma, **grafik yöntemini adımlarıyla** izleme (ters çevir, kaydır, çarp, topla), kaydırma kuralı şeridini kaydırma, çarpım tablosunda köşegen seçme, zar sayısını ve hileli zarı değiştirip toplamın dağılımını görme, hareketli ortalamanın pencere uzunluğuyla oynama.",
      "Soru havuzuna 4. hafta için 49 soru eklendi; tekrarda çıkacak 20 ek soru da hazır.",
    ],
  },
  {
    pr: 5,
    tarih: "2026-10-31",
    baslik: "3. hafta: ayrık zamanlı sinyaller ve sistemler",
    maddeler: [
      "**3. hafta dersi** açıldı. Konular: birim dürtü, basamak ve rampa; üstel, karmaşık üstel ve sinüzoidal diziler ve periyodiklik; çift ve tek kısımlar; kaydırma, ters çevirme ve ölçekleme; enerji ve güç; diziyi dürtülerle yazma; sistem özellikleri ve LTI sistemler.",
      "Etkileşimli şekillerin bazıları: temel dizileri kaydırma, aⁿ dizisini a ile değiştirme, karmaşık üstelde σ ve ω₀ ile oynama ve y(n) = x(kn − n₀) dönüşümünü adımlarıyla görme. Bir de **sistem tezgâhı** var: sekiz örnek sistemden birini seçince hangi özellikleri neden sağladığını gösteriyor.",
      "Soru havuzuna 3. hafta için 40 soru eklendi; tekrarda çıkacak 19 ek soru da hazır.",
    ],
  },
  {
    pr: 4,
    tarih: "2026-10-31",
    baslik: "2. hafta: MatStudio ile çalışmak",
    maddeler: [
      "**2. hafta dersi** açıldı. Konular: betik yazma, vektör ve matris kurma, indeksleme ve doğrusal indeks, eleman bazında ve matris işlemleri, ilişkisel ve mantıksal işleçler, fonksiyon yazma, rastgele sayılar, dizi birleştirme ve istatistik fonksiyonları.",
      "Etkileşimli şekillerde bir indeksleme ifadesi seçip vektörden ya da matristen hangi elemanların alındığını görebilirsin. `mean`, `median`, `std` ve `var` için boyutu ve ağırlığı değiştirip sonucu karşılaştırabilirsin.",
      "MatStudio'ya yeni fonksiyonlar eklendi: `cat`, `vertcat`, `corrcoef`, `randperm`, `who` ve `whos`. `mean`, `std`, `var`, `median`, `sum`, `max` ve `min` artık `'all'` seçeneğini de kabul ediyor.",
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
      "Her bölümde sayfanın içinde çalışan bir MatStudio örneği ve üzerinde deneyeceğin küçük bir görev var.",
      "Soru havuzuna 1. hafta için 43 soru eklendi; tekrarda çıkacak 19 ek soru da hazır. Çoğu sayısal: sonucu kendin hesaplayıp yazıyorsun.",
      "Düzeltme: Aynı sayfadaki birden çok MatStudio şeklinde eğrilerin ve çubukların bir kısmı kesik görünüyordu.",
    ],
  },
  {
    pr: 2,
    tarih: "2026-10-31",
    baslik: "MatStudio açıldı",
    maddeler: [
      "**MatStudio** tarayıcında çalışıyor: editör, şekil penceresi, komut penceresi ve çalışma alanı. Pencereleri sürükleyip boyutlandırabilir, düzenini kaydedebilirsin.",
      "Vektörler, matrisler, indeksleme, `for`, `while`, `if`, `switch`, kendi fonksiyonların ve anonim fonksiyonlar destekleniyor. `sum`, `mean`, `std`, `conv`, `filter`, `fft`, `freqz` gibi fonksiyonlarla `plot`, `stem`, `histogram`, `bar` ve `subplot` ile çizim var.",
      "Hatalar Türkçe ve satır numarasıyla gösteriliyor; ör. `x(0)` yazınca MatStudio'da indislerin 1'den başladığını hatırlatıyor.",
      "**Örnekler** menüsünde sinüs çizimi, histogram, örtüşme, konvolüsyon, hareketli ortalama, Fourier serisi, FFT ve frekans yanıtı hazır betikleri var. Betiklerini `.m` dosyası olarak indirip yükleyebilirsin.",
      "Derslerdeki MatStudio örnekleri sayfanın içinde çalışıyor; laboratuvar kayıtlarını tek tıkla MatStudio'da açabiliyorsun.",
    ],
  },
  {
    pr: 1,
    tarih: "2026-10-31",
    baslik: "DSP Pratik açılıyor",
    maddeler: [
      "Sayısal sinyal işleme dersi için yeni pratik sitesi kuruldu: haftalık dersler, soru havuzu, aralıklı tekrar, ilerleme sayfası ve soru önerme burada.",
      "Yeni soru türü: **Sayısal**. Sonucu sen hesaplayıp yazıyorsun; `0,5`, `1/2`, `pi/4` ya da `sqrt(2)/2` gibi yazımlar kabul ediliyor, küçük yuvarlama farkları doğru sayılıyor. Dizi isteyen sorularda değerleri MatStudio'daki gibi `[1 2 -1]` biçiminde yazıyorsun.",
      "Ders ve soru metinlerinde formüller artık düzgün matematik yazısıyla görünüyor.",
      "Topluluk bölümü **Laboratuvar kayıtları** oldu: üyeler kısa MatStudio betiklerini paylaşıp beğenebiliyor.",
    ],
  },
];
