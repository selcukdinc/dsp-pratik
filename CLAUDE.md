# Çalışma notları

- Kullanıcıya görünen her değişiklik (her PR) `src/yenilikler.ts` dosyasının en üstüne bir kayıt ekler: PR numarası, tarih, kısa başlık ve kullanıcının diliyle maddeler. `src/yenilikler.test.ts` sırayı ve biçimi denetler.
- Yeni bir soru eklenirse cevabı ders metninde geçmelidir.
- Ders sunuları telifli: depoya eklenmez; şekiller kendi SVG'lerimizle çizilir, sorular kendi cümlelerimizle yazılır.
- Sayısal (`num`) soruların cevapları `shared/grade.ts`'teki belirtimle yazılır ("0.5", "1.48±0.01", "[1 2 -1]"); hesap MATLAB alanında ya da bir betikle doğrulanır.
- Derslerdeki MATLAB örnekleri tarayıcıdaki yorumlayıcının desteklediği alt kümeyle yazılır ve `src/dersler/dersler.test.ts` hepsini çalıştırır.
- Denetimler: `npx tsc -b`, `npx vitest run`, `npm run build`.
