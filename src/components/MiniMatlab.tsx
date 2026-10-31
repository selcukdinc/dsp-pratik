// Ders içindeki MATLAB kutusu: düzenlenebilir kod, Çalıştır, komut çıktısı ve
// şekil. Her çalıştırma temiz bir çalışma alanıyla başlar; her şey tarayıcıda.

import { useMemo, useState } from "react";
import { BoyutluEditor } from "./BoyutluEditor";
import { MatlabEditor, type EditorMark } from "./MatlabEditor";
import { SekilKutusu } from "./MatlabSekil";
import { Markdown } from "./Markdown";
import { matlabdaAc } from "./KayitKodu";
import { Yorumlayici } from "../matlab/yorumla";
import type { Cizim } from "../matlab/cizim";
import type { MiniMatlab as Veri } from "../dersler/tipler";
import { useMiniYan } from "../lib/miniDuzen";

interface Sonuc {
  cikti: string;
  hata: { mesaj: string; satir: number | null } | null;
  cizim: Cizim;
  n: number;
}

export function MiniMatlab({ veri }: { veri: Veri }) {
  const [kod, setKod] = useState(veri.kod);
  const [sonuc, setSonuc] = useState<Sonuc | null>(null);
  const [yan, setYan] = useMiniYan();

  const calistir = () => {
    // Örnekler her seferinde aynı rastgele sayıları üretsin (rng ile değiştirilebilir)
    const y = new Yorumlayici({ tohum: 0, sure: 3000 });
    const r = y.calistir(kod);
    setSonuc({ cikti: y.cikti, hata: r.hata, cizim: y.cizim, n: (sonuc?.n ?? 0) + 1 });
  };
  const sifirla = () => {
    setKod(veri.kod);
    setSonuc(null);
  };

  const marks = useMemo<EditorMark[]>(() => (sonuc?.hata?.satir ? [{ line: sonuc.hata.satir, severity: "error" }] : []), [sonuc]);
  const sekiller = sonuc?.cizim.sekiller.filter((s) => s.eksenler.length) ?? [];

  return (
    <div className={`mini-sim mini-matlab${yan ? " yan" : ""}`}>
      <div className="mini-kod">
        <BoyutluEditor sinif="mini-editor">
          <MatlabEditor value={kod} onChange={setKod} marks={marks} onRun={calistir} etiket="Dersteki MATLAB örneği" />
        </BoyutluEditor>
        <div className="kod-dugmeler">
          <button className="primary" onClick={calistir} title="Ctrl+Enter">▶ Çalıştır</button>
          <button onClick={sifirla} disabled={kod === veri.kod && !sonuc}>Örneğe dön</button>
          <button className="baglanti-dugme" onClick={() => matlabdaAc(kod)}>MATLAB alanında aç</button>
          <span className="mini-duzen" role="group" aria-label="Çıktının yeri">
            <button className="cip" aria-pressed={!yan} onClick={() => setYan(false)} title="Çıktı kodun altında">Alt alta</button>
            <button className="cip" aria-pressed={yan} onClick={() => setYan(true)} title="Çıktı kodun sağında">Yan yana</button>
          </span>
        </div>
        {veri.gorev && (
          <div className="mini-gorev">
            <Markdown text={`**Dene:** ${veri.gorev}`} />
          </div>
        )}
      </div>
      <div className="mini-sonuc" aria-live="polite">
        {sonuc && (sonuc.cikti || sonuc.hata) && (
          <pre className={`mini-cikti${sonuc.hata ? " hatali" : ""}`}>
            {sonuc.cikti}
            {sonuc.hata && <span className="bad">{`Hata${sonuc.hata.satir ? ` (satır ${sonuc.hata.satir})` : ""}: ${sonuc.hata.mesaj}`}</span>}
          </pre>
        )}
        {sekiller.map((s) => (
          <div className="mini-sekil" key={`${sonuc!.n}-${s.no}`}>
            <SekilKutusu sekil={s} oran={s.eksenler.some((e) => e.m > 1) ? 0.75 : 0.55} />
          </div>
        ))}
        {sonuc && !sonuc.cikti && !sonuc.hata && !sekiller.length && <p className="hint">Kod çalıştı; çıktı yok (satırların sonunda ; var).</p>}
        {!sonuc && yan && <p className="hint mini-bos">▶ Çalıştır'a bastığında çıktı ve grafikler burada görünür.</p>}
      </div>
    </div>
  );
}
