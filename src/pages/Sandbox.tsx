// /pratik: MATLAB alanı. Yorumlayıcı ve pencereler bir sonraki adımda gelir.

interface Props {
  onStatus: (s: string) => void;
  // Başka bir sayfaya geçilince MATLAB alanı kapanmaz, gizlenir
  aktif?: boolean;
}

export function Sandbox(_: Props) {
  return (
    <div className="about">
      <h2>MATLAB alanı</h2>
      <p>
        Tarayıcıda çalışan MATLAB alanı hazırlanıyor: editör, şekil penceresi, komut penceresi ve çalışma alanı. Bu
        sırada dersleri okuyabilir ve soruları çözebilirsin.
      </p>
    </div>
  );
}
