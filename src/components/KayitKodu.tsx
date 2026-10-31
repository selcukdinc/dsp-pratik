// Laboratuvar kayıtlarındaki MATLAB kodu: gösterme, yazma ve MATLAB alanına aktarma.

import { navigate } from "../lib/router";

// MATLAB alanı açılınca bu anahtardaki kodu yeni bir betik olarak alır
export const GELEN_KOD = "dsp-pratik:matlab-gelen";

export function matlabdaAc(kod: string) {
  try {
    localStorage.setItem(GELEN_KOD, kod);
  } catch {
    // depolama kapalıysa MATLAB alanı boş açılır
  }
  navigate({ page: "pratik" });
}

export function KodGoster({ kod }: { kod: string }) {
  return <pre className="log mono kayit-kodu">{kod}</pre>;
}

export function KodYaz({ kod, onChange }: { kod: string; onChange: (k: string) => void }) {
  return (
    <div className="etiketli tam">
      <label htmlFor="kayit-kodu">MATLAB kodu</label>
      <textarea id="kayit-kodu" className="mono" rows={14} spellCheck={false} value={kod} onChange={(e) => onChange(e.target.value)} />
    </div>
  );
}
