# DSP Pratik

Sayısal sinyal işleme (DSP) dersi için açık kaynaklı, ücretsiz bir pratik sitesi.

**Site:** [dsp.selcukdinc.dev](https://dsp.selcukdinc.dev)

Kurulum yok, üyelik zorunlu değil. Siteyi aç, dersi oku, şekillerle oyna, soruları çöz, MATLAB yaz.

## Neler var?

- **Haftalık etkileşimli dersler:** Ders sunularının konu sırasını izleyen kısa anlatımlar; değerini değiştirip
  sonucu hemen gördüğün şekiller (örnekleme, konvolüsyon, Fourier serisi, DFT...) ve dersin içinde çalışan MATLAB örnekleri.
- **Haftalara göre soru havuzu:** Doğru/yanlış, şıklı, boşluk doldurma ve sayısal sorular. Sayısal sorularda
  `0,5`, `1/2`, `pi/4` ya da `[1 2 -1]` gibi yazımlar kabul edilir. Sunumdaki örneklere dayanan sorular `Orijinal`,
  aynı konudan türetilenler `Türetilmiş` etiketlidir.
- **Aralıklı tekrar:** Yanlış yaptığın sorular unutmaya başladığın aralıklarla yeniden karşına çıkar.
- **MATLAB alanı:** Tarayıcıda çalışan bir MATLAB alt kümesi: vektörler, matrisler, döngüler, `conv`, `fft`
  ve `plot`, `stem`, `histogram`, `subplot` ile çizim.
- **Laboratuvar kayıtları:** Üyeler kısa MATLAB betiklerini paylaşır, beğenir, MATLAB alanında açar.
- **Konu bazlı ilerleme** ve **misafir kullanım**.

## Gizlilik

- Reklam yok.
- Analitik ya da takip çerezi yok.
- Yalnızca ilk cevabını gönderdiğinde ilerlemeni tutmak için tek bir oturum çerezi yazılır.
- Yazdığın MATLAB kodu, sen laboratuvar kaydı olarak paylaşmadıkça tarayıcından çıkmaz.

## Katkıda bulun

- **Yanlış soru ya da hata mı gördün?** [Yeni bir issue aç](https://github.com/selcukdinc/dsp-pratik/issues/new).
  Hangi soru olduğunu (hafta ve sorunun metni) ve neyin yanlış olduğunu yazman yeterli.
- **Soru önermek ister misin?** Hesabınla giriş yapıp sitedeki [Soru öner](https://dsp.selcukdinc.dev/oner)
  sayfasını kullan. Yayımlanırsa istersen sorunun altında adın görünür. Hesap açmak
  istemiyorsan bir [issue](https://github.com/selcukdinc/dsp-pratik/issues/new) da açabilirsin.
- **Beğendiysen** depoya yıldız vermeyi unutma, başkalarının bulmasına yardımcı olur.

## Geliştiriciler için

Gereksinim: Node.js 22.12 veya üstü (22 ya da 24 LTS önerilir).

```sh
npm install
npm run db:migrate:local   # yerel veritabanına şema ve örnek sorular
npm run dev                # http://localhost:5173
npm test
```

Yerelde kayıt ve parola sıfırlamayı denemek için proje kökünde `.dev.vars`
dosyası oluşturup `EPOSTA_KONSOL=1` yaz. Doğrulama kodları e-posta yerine
`npm run dev` çıktısına düşer.

## Yayına alma

İlk kurulumda `wrangler d1 create dsp-pratik` çıktısındaki `database_id`'yi `wrangler.jsonc`'te iki yere yaz,
sonra migration'ları uygula ve yayımla:

```sh
npx wrangler d1 migrations apply dsp-pratik --remote
npm run deploy
```

`npm run deploy` önce `vite build` çalıştırır; Cloudflare eklentisi derlenen
dosyaların yerini (`assets.directory`) yayın ayarına o sırada ekler. Derlemeden
doğrudan `npx wrangler deploy` çalıştırılırsa "`assets` property ... missing the
required `directory` property" hatası alınır.

## Lisans

[GPL-3.0-or-later](LICENSE).

Formüller [KaTeX](https://katex.org) (MIT) ile çizilir.
