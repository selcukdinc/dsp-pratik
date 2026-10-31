// Ders içindeki MATLAB kutusu. Kod, MATLAB alanında açılabilir.

import { Markdown } from "./Markdown";
import { KodGoster, matlabdaAc } from "./KayitKodu";
import type { MiniMatlab as Veri } from "../dersler/tipler";

export function MiniMatlab({ veri }: { veri: Veri }) {
  return (
    <div className="mini-matlab">
      {veri.gorev && <Markdown text={veri.gorev} />}
      <KodGoster kod={veri.kod} />
      <button onClick={() => matlabdaAc(veri.kod)}>MATLAB alanında aç</button>
    </div>
  );
}
