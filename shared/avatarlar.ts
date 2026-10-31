// Avatar kimlikleri. Çizimler src/components/Avatar.tsx'te; sunucu sadece
// kimliğin bu listede olup olmadığına bakar.

export interface AvatarBilgi {
  id: string;
  ad: string;
  grup: string;
}

const g = (grup: string, liste: [string, string][]): AvatarBilgi[] => liste.map(([id, ad]) => ({ id, ad, grup }));

export const AVATARLAR: AvatarBilgi[] = [
  ...g("Sürekli sinyaller", [
    ["sinus", "Sinüs"], ["kosinus", "Kosinüs"], ["kare", "Kare dalga"], ["ucgen", "Üçgen dalga"], ["testere", "Testere dişi"],
    ["sinc", "sinc"], ["sonumlu", "Sönümlü salınım"], ["chirp", "Cıvıltı (chirp)"], ["gurultu", "Gürültü"],
  ]),
  ...g("Ayrık diziler", [
    ["durtu", "Birim dürtü"], ["basamak", "Birim basamak"], ["rampa", "Rampa"], ["ustel", "Üstel dizi"],
    ["ayrik-sinus", "Ayrık sinüs"], ["alternans", "(−1)ⁿ"], ["ornekleme", "Örnekleme"], ["nicemleme", "Nicemleme"],
  ]),
  ...g("Sistemler", [
    ["toplayici", "Toplama düğümü"], ["carpici", "Çarpma düğümü"], ["gecikme", "Birim gecikme"], ["kazanc", "Kazanç"],
    ["sistem", "Sistem kutusu"], ["kaskat", "Seri bağlı sistemler"], ["geri-besleme", "Geri besleme"],
  ]),
  ...g("Frekans", [
    ["spektrum", "Spektrum"], ["alcak-geciren", "Alçak geçiren"], ["yuksek-geciren", "Yüksek geçiren"],
    ["bant-geciren", "Bant geçiren"], ["bant-durduran", "Bant durduran"], ["kelebek", "FFT kelebeği"],
    ["birim-cember", "Birim çember"], ["harmonikler", "Harmonikler"],
  ]),
  ...g("Matematik", [
    ["sigma", "Σ"], ["integral", "∫"], ["pi", "π"], ["j", "j"], ["euler", "e^jω"], ["delta", "δ[n]"], ["konvolusyon", "∗"],
  ]),
  ...g("Araçlar", [
    ["osiloskop", "Osiloskop"], ["histogram", "Histogram"], ["mikrofon", "Mikrofon"], ["hoparlor", "Hoparlör"],
    ["kulaklik", "Kulaklık"], ["anten", "Anten"], ["adc", "ADC"], ["matlab", "Komut penceresi"],
  ]),
];

export const AVATAR_IDLERI = new Set(AVATARLAR.map((a) => a.id));

// Arka plan renkleri: hepsi açık tonlar, üzerindeki çizim koyu kalır.
// "yok" seçilirse çizim temanın yazı rengini alır.
export const AVATAR_ZEMINLERI = [
  "#d9e6f7", "#dcefd9", "#fbe3c8", "#f6d6d6", "#e6dcf5", "#d4eeee", "#f3ecc2", "#e3e3e3",
] as const;

export function rastgeleAvatar(): string {
  const i = crypto.getRandomValues(new Uint32Array(1))[0]! % AVATARLAR.length;
  return AVATARLAR[i]!.id;
}
