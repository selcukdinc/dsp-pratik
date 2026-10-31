// /tanitim: sitenin ne işe yaradığını, kimler için olduğunu ve nasıl
// kullanılacağını anlatan sayfa. /sss: sık sorulanlar.

import { useEffect } from "react";
import { href } from "../lib/router";
import { Markdown } from "../components/Markdown";
import { SSS } from "../sss";
import { TANITIM_GORULDU } from "../components/Shell";

const KITLELER = [
  {
    baslik: "Sayısal sinyal işleme dersini alan öğrenciler",
    metin: "Vize ve finale hazırlanırken konuları haftalar halinde tekrar et, haftaya göre açılan sorularla kendini dene. Yanlış yaptığın sorular aralıklı tekrarla unutmadan önce yeniden karşına çıkar; ilerleme sayfası zayıf konularını gösterir.",
  },
  {
    baslik: "Konuyu görerek anlamak isteyenler",
    metin: "Konvolüsyon, örnekleme, Fourier serisi ve DFT gibi konular etkileşimli şekillerle anlatılır: bir değeri değiştir, sinyalin ve spektrumun nasıl değiştiğini hemen gör.",
  },
  {
    baslik: "MatStudio'ya yeni başlayanlar",
    metin: "Hiçbir şey kurmadan tarayıcında MatStudio yaz: vektörler, döngüler, grafik ve histogram çizimi. Derslerdeki örnekleri değiştirip çalıştırabilir, beğendiğin betiği laboratuvar kaydı olarak paylaşabilirsin.",
  },
  {
    baslik: "Eğitmenler ve asistanlar",
    metin: "Öğrencilerini konuya ya da haftaya göre soru havuzuna yönlendirebilir, yeni soru önerebilirsin.",
  },
];

const ADIMLAR = [
  {
    gorsel: "ders",
    baslik: "1. Konuyu Dersler'den oku",
    metin: "Her hafta için kısa bir anlatım, içindekiler listesi ve etkileşimli şekiller var. Terimlerin İngilizcesi parantez içinde yazar. Dersteki MatStudio örneklerini değiştirip çalıştırabilirsin. Dersin sonunda kısa bir test seni bekler.",
    bag: { page: "ders" } as const,
    bagMetni: "Derslere git",
  },
  {
    gorsel: "sorular",
    baslik: "2. Soru havuzunda kendini dene",
    metin: "Hafta ve konu seç; türe, zorluğa göre süz, ara ya da yalnızca çözmediklerini göster. Sayısal sorularda sonucu yazarsın; virgüllü, kesirli ya da pi'li yazım kabul edilir. Cevabın hemen kontrol edilir ve açıklaması gösterilir.",
    bag: { page: "sorular" } as const,
    bagMetni: "Soru havuzunu aç",
  },
  {
    gorsel: "tekrar",
    baslik: "3. Yanlışlarını aralıklı tekrarla pekiştir",
    metin: "Yanlış yaptığın soru ertesi gün Tekrar sayfasına düşer; doğru bildikçe 3, 7, 14 ve 30 gün arayla yeniden gelir. Aynı kavramdan henüz görmediğin yedek sorular da eklenir. Menüdeki sayı bugün kaç sorunun beklediğini gösterir.",
    bag: { page: "tekrar" } as const,
    bagMetni: "Tekrar sayfasını aç",
  },
  {
    gorsel: "pratik",
    baslik: "4. MatStudio'da serbest çalış",
    metin: "Betik yaz, çalıştır; grafikler şekil penceresinde, çıktılar komut penceresinde, değişkenler çalışma alanında görünür. Hazır örneklerle başlayabilir, pencereleri sürükleyip düzenini kurabilirsin.",
    bag: { page: "pratik" } as const,
    bagMetni: "MatStudio'ya git",
  },
  {
    gorsel: "ilerleme",
    baslik: "5. Günlük hedefini tut, ilerlemeni izle",
    metin: "Günde kaç doğru cevap vermek istediğini Ayarlar'dan seç; hedefe ulaştığın an kısa bir kutlama görürsün. Etkinlik takvimi, serin ve rozetlerin yalnızca sana görünür. En zayıf üç konuna \"Tekrar et\" ile dön.",
    bag: { page: "ilerleme" } as const,
    bagMetni: "İlerlemene bak",
  },
];

export function Tanitim() {
  useEffect(() => {
    try {
      localStorage.setItem(TANITIM_GORULDU, "1");
    } catch {
      // gizli pencere
    }
  }, []);
  return (
    <div className="tanitim">
      <header className="tanitim-ust">
        <h2>Sinyal işlemeyi görerek ve deneyerek öğren</h2>
        <p>
          DSP Pratik, sayısal sinyal işleme dersine hazırlanmak için ücretsiz ve açık kaynaklı bir çalışma alanı. Etkileşimli
          şekilli haftalık dersler, haftalara ayrılmış soru havuzu, yanlışlar için aralıklı tekrar ve tarayıcında çalışan bir
          MatStudio tek yerde. Kurulum gerekmez; yazdığın kod bilgisayarından çıkmaz.
        </p>
        <div className="tanitim-dugmeler">
          <a className="buton primary" href={href({ page: "ders" })}>Derslerle başla</a>
          <a className="buton" href={href({ page: "sorular" })}>Sorulara geç</a>
          <a className="buton" href={href({ page: "pratik" })}>MatStudio</a>
        </div>
      </header>

      <section>
        <h3>Kimler için?</h3>
        <div className="kitleler">
          {KITLELER.map((k) => (
            <div key={k.baslik} className="kitle">
              <strong>{k.baslik}</strong>
              <p>{k.metin}</p>
            </div>
          ))}
        </div>
      </section>

      <section>
        <h3>Nasıl kullanılır?</h3>
        <ol className="adimlar">
          {ADIMLAR.map((a, i) => (
            <li key={a.gorsel} className={i % 2 ? "ters" : undefined}>
              <div>
                <h4>{a.baslik}</h4>
                <p>{a.metin}</p>
                <a href={href(a.bag)}>{a.bagMetni} →</a>
              </div>
            </li>
          ))}
        </ol>
      </section>

      <section className="tanitim-alt">
        <h3>Senin için ne değişir?</h3>
        <ul>
          <li><strong>Kurulum yok:</strong> MatStudio kurmadan, herhangi bir bilgisayarda ya da telefonda çalışabilirsin.</li>
          <li><strong>Hemen geri bildirim:</strong> cevabının doğru olup olmadığını ve nedenini aynı anda görürsün.</li>
          <li><strong>Unutmadan pekiştirme:</strong> yanlışların, unutmaya başladığın aralıklarla yeniden karşına çıkar.</li>
          <li><strong>Gizlilik:</strong> reklam ve takip çerezi yok; kodun sen paylaşmadıkça tarayıcında kalır.</li>
        </ul>
        <p>
          Aklına takılan bir şey mi var? <a href={href({ page: "sss" })}>Sık sorulan sorulara</a> göz at.
        </p>
      </section>
    </div>
  );
}

export function Sss() {
  return (
    <div className="sss">
      <p className="hint">Sorunun cevabı burada yoksa giriş yapıp Mesajlarım'dan yöneticiye yazabilirsin.</p>
      {SSS.map((b) => (
        <section key={b.baslik}>
          <h3>{b.baslik}</h3>
          {b.sorular.map((s) => (
            <details key={s.soru} className="sss-soru">
              <summary>{s.soru}</summary>
              <Markdown text={s.cevap} />
            </details>
          ))}
        </section>
      ))}
    </div>
  );
}
