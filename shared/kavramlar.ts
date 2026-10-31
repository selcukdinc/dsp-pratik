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
  // Hafta 2
  "matlab-temel": { ad: "MATLAB betikleri, çıktı ve özel değerler" },
  "vektor-olusturma": { ad: "Vektör oluşturma: aralık ve linspace" },
  indeksleme: { ad: "Vektör indeksleme" },
  "matris-indeks": { ad: "Matris indeksleme ve doğrusal indeks" },
  "eleman-islem": { ad: "Eleman eleman ve matris işlemleri" },
  mantiksal: { ad: "İlişkisel ve mantıksal işleçler" },
  "fonksiyon-tanim": { ad: "MATLAB'da fonksiyon yazmak" },
  "rastgele-uretim": { ad: "rand, randn, randi ve randperm" },
  birlestirme: { ad: "Dizi birleştirme" },
  "istatistik-boyut": { ad: "İstatistik fonksiyonları ve boyut" },
  // Hafta 3
  "dizi-gosterim": { ad: "Ayrık zamanlı dizilerin gösterimi" },
  "temel-diziler": { ad: "Birim dürtü, basamak ve rampa" },
  "ustel-sinuzoidal": { ad: "Üstel ve karmaşık üstel diziler" },
  periyodiklik: { ad: "Ayrık sinüslerde periyodiklik" },
  simetri: { ad: "Çift ve tek diziler" },
  "sinyal-donusum": { ad: "Kaydırma, ters çevirme ve ölçekleme" },
  "enerji-guc": { ad: "Sinyal enerjisi ve gücü" },
  "durtu-ayristirma": { ad: "Diziyi dürtülerle yazmak" },
  dogrusallik: { ad: "Doğrusallık ve süperpozisyon" },
  "sistem-ozellik": { ad: "Nedensellik, kararlılık, hafıza, tersinirlik" },
  lti: { ad: "LTI sistemler ve dürtü yanıtı" },
  // Hafta 4
  "konvolusyon-toplam": { ad: "Konvolüsyon toplamı" },
  "konvolusyon-ozellik": { ad: "Değişme, birleşme ve dağılma" },
  "dogrudan-hesap": { ad: "Doğrudan değerlendirme ve seriler" },
  "konvolusyon-uzunluk": { ad: "Çıkışın uzunluğu ve konumu" },
  "grafik-yontem": { ad: "Grafik yöntem" },
  "kaydirma-kurali": { ad: "Kaydırma kuralı" },
  "polinom-carpim": { ad: "Çarpım tablosu ve polinom çarpımı" },
  "olasilik-konvolusyon": { ad: "Olasılık dağılımlarının konvolüsyonu" },
  "hareketli-ortalama": { ad: "Hareketli ortalama" },
  korelasyon: { ad: "Korelasyon ve otokorelasyon" },
  // Hafta 5
  "sinus-cember": { ad: "Çember üzerinde dönen nokta ve sinüs" },
  "sinus-parametre": { ad: "Genlik, frekans, periyot ve faz" },
  "sinus-toplam": { ad: "Sinüslerin toplamı" },
  "fourier-serisi": { ad: "Fourier serisi ve harmonikler" },
  spektrum: { ad: "Frekans spektrumu" },
  "sarma-kutle-merkezi": { ad: "Sarma makinesi ve kütle merkezi" },
  "euler-formulu": { ad: "Euler formülü" },
  "fourier-donusum": { ad: "Fourier dönüşümü" },
  "fourier-dogrusallik": { ad: "Fourier dönüşümünün doğrusallığı" },
  // Hafta 6
  ozfonksiyon: { ad: "LTI sistemlerin özfonksiyonları" },
  "frekans-yaniti": { ad: "Frekans yanıtı" },
  "db-olcek": { ad: "Desibel ölçeği" },
  "grup-gecikmesi": { ad: "Faz ve grup gecikmesi" },
  "frekans-simetri": { ad: "Frekans yanıtının periyodikliği ve simetrisi" },
  "dogrusal-faz": { ad: "Doğrusal fazlı filtreler" },
  "tam-geciren": { ad: "Tam geçiren filtreler" },
  "filtre-turleri": { ad: "Frekans seçici filtreler" },
  "sistem-baglanti-frekans": { ad: "Kaskat ve paralel bağlantının frekans yanıtı" },
  dtft: { ad: "Ayrık zamanlı Fourier dönüşümü" },
  "ters-dtft": { ad: "Ters DTFT" },
  "dtft-ozellik": { ad: "DTFT özellikleri: kaydırma, ters çevirme, modülasyon" },
  "konvolusyon-teoremi": { ad: "Konvolüsyon teoremi" },
  parseval: { ad: "Parseval teoremi" },
  "ters-sistem": { ad: "Ters sistem" },
};
