// Avatar çizimleri. Hepsi currentColor ile çizilir: zemin rengi seçilmemişse
// temanın yazı rengini alır, seçilmişse açık zeminin üzerinde koyu kalır.
// Kimlik listesi shared/avatarlar.ts'te.

import type { ReactNode } from "react";
import { AVATARLAR } from "../../shared/avatarlar";

const L = ({ d }: { d: string }) => <path d={d} />;
const C = ({ x, y, r = 3 }: { x: number; y: number; r?: number }) => <circle cx={x} cy={y} r={r} />;

// Kutunun içinde ya da yanında kısa yazılar (z⁻¹, ADC, Σ ...)
function T({ x, y, s = 9, children }: { x: number; y: number; s?: number; children: string }) {
  return (
    <text
      x={x}
      y={y}
      fontSize={s}
      textAnchor="middle"
      dominantBaseline="central"
      fill="currentColor"
      stroke="none"
      fontFamily="ui-monospace, Menlo, Consolas, monospace"
      fontWeight={700}
    >
      {children}
    </text>
  );
}

// Ayrık dizi çizimi: taban çizgisi, her örnek için sap ve uçta küçük daire
function stem(degerler: number[], taban = 30, x0 = 7, dx = 5): ReactNode {
  return (
    <>
      <L d={`M4 ${taban} H44`} />
      {degerler.map((v, i) => {
        const x = x0 + i * dx;
        const y = taban - v;
        return (
          <g key={i}>
            {v !== 0 && <L d={`M${x} ${taban} V${y}`} />}
            <circle cx={x} cy={y} r={1.8} fill="currentColor" stroke="none" />
          </g>
        );
      })}
    </>
  );
}

// Fonksiyonu 4..44 aralığında örnekleyip çizgi olarak çizer
function egri(f: (t: number) => number, orta = 24, n = 60): string {
  const noktalar: string[] = [];
  for (let i = 0; i <= n; i++) {
    const x = 4 + (40 * i) / n;
    noktalar.push(`${i ? "L" : "M"}${x.toFixed(1)} ${(orta - f(i / n)).toFixed(1)}`);
  }
  return noktalar.join(" ");
}

const kutu = (x: number, y: number, w: number, h: number) => <rect x={x} y={y} width={w} height={h} rx={2} />;

// Genlik yanıtı çizimleri için eksen
const eksen = "M6 6 V40 H44";

const CIZIMLER: Record<string, ReactNode> = {
  // Sürekli sinyaller
  sinus: <L d={egri((t) => 12 * Math.sin(2 * Math.PI * 1.5 * t))} />,
  kosinus: <L d={egri((t) => 12 * Math.cos(2 * Math.PI * 1.5 * t))} />,
  kare: <L d="M4 30 H10 V16 H22 V30 H34 V16 H44" />,
  ucgen: <L d="M4 32 L11 16 L18 32 L25 16 L32 32 L39 16 L44 26" />,
  testere: <L d="M4 32 L16 16 V32 L28 16 V32 L40 16 V32 H44" />,
  sinc: <L d={egri((t) => { const x = (t - 0.5) * 6 * Math.PI; return x === 0 ? 16 : (16 * Math.sin(x)) / x; }, 30)} />,
  sonumlu: <L d={egri((t) => 14 * Math.exp(-3 * t) * Math.cos(2 * Math.PI * 4 * t))} />,
  chirp: <L d={egri((t) => 11 * Math.sin(2 * Math.PI * (1 + 3 * t) * t * 2))} />,
  gurultu: <L d="M4 24 L6 18 L8 28 L10 21 L12 31 L14 15 L16 26 L18 20 L20 29 L22 17 L24 25 L26 13 L28 27 L30 22 L32 33 L34 19 L36 24 L38 16 L40 28 L42 21 L44 24" />,

  // Ayrık diziler
  durtu: stem([0, 0, 0, 18, 0, 0, 0], 34, 9, 5),
  basamak: stem([0, 0, 14, 14, 14, 14, 14, 14], 34, 7, 5),
  rampa: stem([0, 3, 6, 9, 12, 15, 18, 21], 36, 7, 5),
  ustel: stem([20, 14, 10, 7, 5, 3.5, 2.5, 1.7], 36, 7, 5),
  "ayrik-sinus": stem([0, 9, 12, 9, 0, -9, -12, -9], 24, 7, 5),
  alternans: stem([10, -10, 10, -10, 10, -10, 10, -10], 24, 7, 5),
  ornekleme: <><L d={egri((t) => 11 * Math.sin(2 * Math.PI * t))} />{[0, 1, 2, 3, 4, 5, 6, 7].map((i) => { const t = i / 8 + 1 / 16; return <circle key={i} cx={4 + 40 * t} cy={24 - 11 * Math.sin(2 * Math.PI * t)} r={2} fill="currentColor" stroke="none" />; })}</>,
  nicemleme: <><L d="M4 38 H10 V32 H16 V26 H22 V20 H28 V14 H34 V8 H44" /><L d="M4 40 L44 6" /></>,

  // Sistemler
  toplayici: <><C x={24} y={24} r={10} /><L d="M24 18 V30 M18 24 H30 M2 24 H14 M24 2 V14 M34 24 H46" /></>,
  carpici: <><C x={24} y={24} r={10} /><L d="M19 19 L29 29 M29 19 L19 29 M2 24 H14 M24 2 V14 M34 24 H46" /></>,
  gecikme: <>{kutu(10, 12, 28, 24)}<T x={24} y={24} s={10}>z⁻¹</T><L d="M2 24 H10 M38 24 H46" /></>,
  kazanc: <><L d="M12 10 L38 24 L12 38 Z M2 24 H12 M38 24 H46" /><T x={21} y={24} s={9}>a</T></>,
  sistem: <>{kutu(10, 12, 28, 24)}<T x={24} y={24} s={9}>h[n]</T><L d="M2 24 H10 M38 24 H46" /></>,
  kaskat: <>{kutu(6, 16, 14, 16)}{kutu(28, 16, 14, 16)}<L d="M2 24 H6 M20 24 H28 M42 24 H46" /><T x={13} y={24} s={7}>h₁</T><T x={35} y={24} s={7}>h₂</T></>,
  "geri-besleme": <><C x={11} y={18} r={5} /><L d="M2 18 H6 M16 18 H24" />{kutu(24, 11, 14, 14)}<L d="M38 18 H46 M42 18 V38 H11 V23" /></>,

  // Frekans
  spektrum: <><L d="M4 40 H44" />{[[8, 8], [14, 26], [20, 14], [26, 30], [32, 10], [38, 18]].map(([x, y]) => <L key={x} d={`M${x} 40 V${y}`} />)}</>,
  "alcak-geciren": <><L d={eksen} /><L d="M6 14 H22 Q28 14 30 30 L34 40" /></>,
  "yuksek-geciren": <><L d={eksen} /><L d="M14 40 L18 30 Q20 14 26 14 H44" /></>,
  "bant-geciren": <><L d={eksen} /><L d="M10 40 L15 18 Q16 14 20 14 H28 Q32 14 33 18 L38 40" /></>,
  "bant-durduran": <><L d={eksen} /><L d="M6 14 H14 Q18 14 19 20 L22 38 H28 L31 20 Q32 14 36 14 H44" /></>,
  kelebek: <><L d="M4 12 H14 L34 36 H44 M4 36 H14 L34 12 H44" /><C x={14} y={12} r={2} /><C x={14} y={36} r={2} /><C x={34} y={12} r={2} /><C x={34} y={36} r={2} /></>,
  "birim-cember": <><C x={24} y={24} r={16} /><L d="M4 24 H44 M24 4 V44 M24 24 L35 13" /><circle cx={35} cy={13} r={2.2} fill="currentColor" stroke="none" /></>,
  harmonikler: <><L d="M4 40 H44" />{[[8, 8], [16, 19], [24, 25], [32, 29], [40, 31]].map(([x, y]) => <L key={x} d={`M${x} 40 V${y}`} />)}</>,

  // Matematik
  sigma: <T x={24} y={25} s={30}>Σ</T>,
  integral: <T x={24} y={25} s={30}>∫</T>,
  pi: <T x={24} y={25} s={28}>π</T>,
  j: <T x={24} y={25} s={28}>j</T>,
  euler: <T x={24} y={25} s={13}>e^jω</T>,
  delta: <T x={24} y={25} s={13}>δ[n]</T>,
  konvolusyon: <><C x={24} y={24} r={14} /><L d="M24 16 V32 M17 20 L31 28 M31 20 L17 28" /></>,

  // Araçlar
  osiloskop: <><rect x={4} y={8} width={40} height={30} rx={3} /><rect x={8} y={12} width={24} height={22} /><L d="M9 23 Q13 13 17 23 T25 23 T31 23" /><C x={38} y={16} r={2} /><C x={38} y={26} r={2} /></>,
  histogram: <><L d="M4 40 H44" />{[[6, 34], [12, 26], [18, 14], [24, 10], [30, 18], [36, 28], [42, 35]].map(([x, y]) => <rect key={x} x={x - 2.5} y={y} width={5} height={40 - y} />)}</>,
  mikrofon: <><rect x={18} y={6} width={12} height={22} rx={6} /><L d="M12 22 Q12 34 24 34 Q36 34 36 22 M24 34 V42 M17 42 H31" /></>,
  hoparlor: <><L d="M8 18 H16 L28 8 V40 L16 30 H8 Z M34 18 Q38 24 34 30 M38 13 Q46 24 38 35" /></>,
  kulaklik: <><L d="M8 30 V24 Q8 8 24 8 Q40 8 40 24 V30" /><rect x={6} y={28} width={8} height={12} rx={2} /><rect x={34} y={28} width={8} height={12} rx={2} /></>,
  anten: <><L d="M24 20 V44 M16 44 H32 M24 20 L14 6 M24 20 L34 6 M14 6 H34" /><L d="M38 18 Q42 24 38 30 M10 18 Q6 24 10 30" /></>,
  adc: <>{kutu(12, 10, 24, 28)}<T x={24} y={24} s={8}>ADC</T><L d={`M2 24 Q5 19 8 24 T12 24`} /><L d="M36 18 H44 M36 24 H44 M36 30 H44" /></>,
  matlab: <><rect x={4} y={8} width={40} height={32} rx={3} /><L d="M4 15 H44" /><T x={13} y={27} s={10}>&gt;&gt;</T><L d="M22 31 H32" /></>,
};

interface Props {
  id: string | null;
  bg?: string | null;
  size?: number;
  title?: string;
}

export function Avatar({ id, bg, size = 32, title }: Props) {
  const cizim = id ? CIZIMLER[id] : undefined;
  const ad = title ?? (id ? AVATARLAR.find((a) => a.id === id)?.ad : undefined) ?? "Avatar";
  return (
    <svg
      className="avatar"
      viewBox="0 0 48 48"
      width={size}
      height={size}
      role="img"
      aria-label={ad}
      style={bg ? { background: bg, color: "#1f1f1f" } : undefined}
    >
      <title>{ad}</title>
      <g fill="none" stroke="currentColor" strokeWidth={2.4} strokeLinecap="round" strokeLinejoin="round">
        {cizim ?? <T x={24} y={25} s={22}>?</T>}
      </g>
    </svg>
  );
}

export const avatarVar = (id: string) => id in CIZIMLER;
