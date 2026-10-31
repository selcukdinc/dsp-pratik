// Ders sayfalarının biçimi. Metinler kendi cümlelerimizle yazılır; hocanın
// sunumları depoya girmez.
//
// Metinlerde ` yerine ~ yazılır (şablon dizgilerinde ters tırnak kaçış
// gerektirdiği için); md() ~ karakterlerini ` ile değiştirir. MATLAB'ın ~=
// ve ~ işleçleri için ¬ yazılır; md() ¬ karakterini ~ yapar.
// Formüller $...$ (satır içi) ve $$...$$ (ayrı satır) arasında TeX olarak yazılır.

export interface MiniMatlab {
  // Bölümde çalıştırılacak MATLAB betiği
  kod: string;
  // Öğrenciye kodda ne değiştirip deneyeceğini söyleyen kısa görev
  gorev?: string;
}

export interface DersBolumu {
  baslik: string;
  metin: string;
  matlab?: MiniMatlab;
  // Bölümün sonundaki "Kendini dene": soru havuzundan 1-2 soru (konu sonu
  // testindekilerden farklı)
  dene?: string[];
}

export interface Ders {
  hafta: number;
  baslik: string;
  ozet: string;
  bolumler: DersBolumu[];
  // Konu sonu testi: soru havuzundaki kimlikler
  test: string[];
}

export const md = (s: string) => s.replace(/~/g, "`").replace(/¬/g, "~").trim();
