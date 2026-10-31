// Derslerde ve sorularda geçen Türkçe terimlerin İngilizce karşılıkları.
// Ders ve soru metinlerinde terimin her kullanımından sonra "(convolution)" gibi
// gösterilir; kod bloklarına ve satır içi koda dokunulmaz. Terimler sayfası da
// bu listeden çizilir.

export interface Terim {
  tr: string;
  en: string;
  // Yalnızca büyük harfle yazıldığında eşleşen terimler (kısaltmalar için)
  buyuk?: boolean;
  aciklama?: string;
}

// Sık geçen genel sözcükler (sinyal, sistem) bilerek listede yok: her
// kullanımda İngilizcesi yazılırsa metin okunmaz olur.
export const TERIMLER: Terim[] = [
  { tr: "örnekleme frekansı", en: "sampling frequency", aciklama: "Saniyede alınan örnek sayısı, fs" },
  { tr: "örnekleme", en: "sampling", aciklama: "Sürekli bir sinyalin eşit aralıklarla değerinin alınması" },
  { tr: "nicemleme", en: "quantization", aciklama: "Örnek değerlerinin sonlu sayıda düzeye yuvarlanması" },
  { tr: "örtüşme", en: "aliasing", aciklama: "Yetersiz örneklemede yüksek frekansın düşük frekans gibi görünmesi" },
  { tr: "standart sapma", en: "standard deviation", aciklama: "Değerlerin ortalama çevresindeki yayılımı, σ" },
  { tr: "varyans", en: "variance", aciklama: "Standart sapmanın karesi, σ²" },
  { tr: "etkin değer", en: "root mean square, RMS" },
  { tr: "olasılık kütle fonksiyonu", en: "probability mass function, PMF" },
  { tr: "olasılık yoğunluk fonksiyonu", en: "probability density function, PDF" },
  { tr: "sinyal-gürültü oranı", en: "signal-to-noise ratio, SNR" },
  { tr: "birim dürtü", en: "unit impulse", aciklama: "Yalnızca n = 0'da 1 olan dizi, δ[n]" },
  { tr: "birim basamak", en: "unit step", aciklama: "n ≥ 0 için 1 olan dizi, u[n]" },
  { tr: "dürtü yanıtı", en: "impulse response", aciklama: "Sistemin δ[n] girişine verdiği çıkış, h[n]" },
  { tr: "basamak yanıtı", en: "step response" },
  { tr: "doğrusallık", en: "linearity" },
  { tr: "zamanla değişmezlik", en: "time invariance" },
  { tr: "nedensellik", en: "causality", aciklama: "Çıkışın gelecekteki girişlere bağlı olmaması" },
  { tr: "kararlılık", en: "stability" },
  { tr: "tersinirlik", en: "invertibility" },
  { tr: "konvolüsyon", en: "convolution", aciklama: "y[n] = Σ x[k] h[n−k]" },
  { tr: "hareketli ortalama", en: "moving average" },
  { tr: "frekans yanıtı", en: "frequency response", aciklama: "Sistemin her frekanstaki kazancı ve faz kayması, H(e^jω)" },
  { tr: "genlik yanıtı", en: "magnitude response" },
  { tr: "faz yanıtı", en: "phase response" },
  { tr: "grup gecikmesi", en: "group delay" },
  { tr: "doğrusal faz", en: "linear phase" },
  { tr: "alçak geçiren", en: "low-pass" },
  { tr: "yüksek geçiren", en: "high-pass" },
  { tr: "bant geçiren", en: "band-pass" },
  { tr: "bant durduran", en: "band-stop" },
  { tr: "tüm geçiren", en: "all-pass" },
  { tr: "özfonksiyon", en: "eigenfunction" },
  { tr: "harmonik", en: "harmonic" },
  { tr: "spektrum", en: "spectrum" },
  { tr: "dairesel kaydırma", en: "circular shift" },
  { tr: "dairesel konvolüsyon", en: "circular convolution" },
  { tr: "sıfır doldurma", en: "zero padding" },
  { tr: "kelebek", en: "butterfly", aciklama: "FFT'nin iki girişli temel hesap birimi" },
  { tr: "zamanda seyreltme", en: "decimation in time, DIT" },
  { tr: "frekansta seyreltme", en: "decimation in frequency, DIF" },
  { tr: "pencereleme", en: "windowing" },
  { tr: "DFT", en: "discrete Fourier transform", buyuk: true },
  { tr: "DTFT", en: "discrete-time Fourier transform", buyuk: true },
  { tr: "FFT", en: "fast Fourier transform", buyuk: true },
];

export type Parca = string | { metin: string; en: string };

const kacir = (s: string) => s.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
const HARF = "a-zçğıöşüâîû";

// Uzun terimler önce denenir ("dairesel konvolüsyon", "konvolüsyon"dan önce).
// Küçük harfli terimler cümle başında büyük harfle de eşleşir ve Türkçe ekleri
// kapsar (konvolüsyonu). Büyük harfli terimler kesme işaretli ekleri kapsar (DFT'nin).
// Hemen ardından "(" gelen kullanım zaten açıklanmış sayılır.
const DESEN = new RegExp(
  [...TERIMLER]
    .sort((a, b) => b.tr.length - a.tr.length)
    .map((t) => {
      if (t.buyuk) return `(${kacir(t.tr)}(?:'[${HARF}]+)?)`;
      const ilk = t.tr[0]!;
      return `([${ilk}${ilk.toLocaleUpperCase("tr")}]${kacir(t.tr.slice(1))}[${HARF}]*)`;
    })
    .map((g) => `(?<![\\p{L}\\d_])${g}(?![\\p{L}\\d_])(?!\\s*\\()`)
    .join("|"),
  "gu",
);
const SIRALI = [...TERIMLER].sort((a, b) => b.tr.length - a.tr.length);

export function terimleriAyir(metin: string): Parca[] {
  const out: Parca[] = [];
  let son = 0;
  for (const m of metin.matchAll(DESEN)) {
    const i = m.slice(1).findIndex((g) => g !== undefined);
    const terim = SIRALI[i]!;
    if (m.index! > son) out.push(metin.slice(son, m.index));
    out.push({ metin: m[0], en: terim.en });
    son = m.index! + m[0].length;
  }
  if (son < metin.length) out.push(metin.slice(son));
  return out;
}
