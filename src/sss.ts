// Sıkça sorulan sorular. Gerçek sorular gelmeye başladıkça bu liste güncellenir.
// Cevaplar Markdown alt kümesiyle yazılır (`kod`, **kalın**, "- " listeleri).

export interface SssBolumu {
  baslik: string;
  sorular: { soru: string; cevap: string }[];
}

export const SSS: SssBolumu[] = [
  {
    baslik: "Genel",
    sorular: [
      {
        soru: "Site ücretli mi?",
        cevap: "Hayır. Site ücretsiz ve açık kaynaklıdır (GPL-3.0). Reklam yoktur.",
      },
      {
        soru: "Kullanmak için hesap açmam gerekiyor mu?",
        cevap:
          "Hayır. Dersleri okuyabilir, soruları çözebilir ve MatStudio'yu hesapsız kullanabilirsin. Hesap açarsan ilerlemen her cihazda seninle gelir; ayrıca soru önerebilir ve laboratuvar kaydı paylaşabilirsin.",
      },
      {
        soru: "Sorular nereden geliyor?",
        cevap:
          "Sorular ders sunularının haftalık konularından derlenir, kendi cümlelerimizle yazılır. Bir sunumdaki soruya dayananlar **Orijinal**, aynı konudan yeni türetilenler **Türetilmiş** etiketi taşır. Sayısal cevaplı soruların sonuçları hesaplanarak denetlenir; virgüllü ya da kesirli yazım (ör. `0,5`, `1/2`, `pi/4`) kabul edilir.",
      },
      {
        soru: "Neden bazı haftaların soruları görünmüyor?",
        cevap:
          "Sorular derste işlenen haftaya göre açılır. Menüdeki Soru havuzu yanında yazan `H5` gibi rozet, soruların kaçıncı haftaya kadar açık olduğunu gösterir.",
      },
    ],
  },
  {
    baslik: "Dersler",
    sorular: [
      {
        soru: "Metindeki parantez içindeki İngilizce kelimeler ne?",
        cevap:
          "Ders ve sorularda geçen terimlerin İngilizcesi, MatStudio belgelerinde ve kaynaklarda o adla karşına çıkacağı için her kullanımda parantez içinde yazılır: \"örtüşme (aliasing)\" gibi. Hepsinin listesi ve kısa anlamları **Terimler** sayfasındadır; Türkçe ya da İngilizce arayabilirsin.",
      },
      {
        soru: "Yazılar çok küçük ya da çok büyük. Nasıl değiştiririm?",
        cevap:
          "Üst çubuktaki **A−** ve **A+** düğmeleri tüm sayfalardaki yazıları %85 ile %150 arasında küçültür ya da büyütür; aradaki yüzdeye tıklayınca varsayılan boyuta dönülür. Seçim bu tarayıcıda saklanır, hesabınla girdiysen hesabına da kaydedilir ve başka cihazda da aynı boyut gelir. Aynı ayar **Ayarlar** sayfasında da var. Geniş ekranda kod içeren sorular iki sütuna ayrılır: soru solda, kod sağda.",
      },
      {
        soru: "Dersin belli bir bölümüne bağlantı verebilir miyim?",
        cevap:
          "Evet. Dersin başındaki içindekiler listesinden bir başlığa tıklayınca adres `/ders/3#bolum-2` gibi o bölümü gösterir; bu bağlantıyı açan kişi doğrudan o bölüme gelir.",
      },
      {
        soru: "Bir ders şeklinde hata gördüm. Nasıl bildiririm?",
        cevap:
          "Her şeklin altında `G-H2-03` gibi bir kod yazar. Giriş yapıp Mesajlarım'dan bu kodla birlikte neyin yanlış olduğunu yazman yeterli; düzeltilecek şekil kodla hemen bulunur.",
      },
    ],
  },
  {
    baslik: "Sorular ve ilerleme",
    sorular: [
      {
        soru: "Şıklar neden her açılışta farklı sırada?",
        cevap:
          "Doğru cevabı şıkkın yerinden ezberlemeyesin diye şıklar her açılışta karıştırılır. Cevabın, şıkkın kendisine göre kontrol edilir; şık dağılımı istatistikleri de sıraya değil şıkkın içeriğine göre tutulur.",
      },
      {
        soru: "Boşluk doldurma sorularında cevabı nasıl yazmalıyım?",
        cevap:
          "Her kutunun yanında ne istendiği yazar: tek boşlukta \"Cevap\", birden çok boşlukta \"1. boşluk: S\" gibi. Büyük ve küçük harf, baştaki ve sondaki boşluklar önemsenmez. Bit ve vektör cevaplarını tırnaklı (`'1'`, `\"0101\"`) ya da tırnaksız yazabilirsin.",
      },
      {
        soru: "Çözmediğim ya da yanlış yaptığım soruları nasıl bulurum?",
        cevap:
          "Soru havuzunun üstündeki süzgeçlerden **Çözmediklerim** ya da **Yanlışlarım**'ı seç. Tür, zorluk ve arama ile daraltabilirsin; süzgeçler adreste tutulduğu için bağlantıyı kaydedip sonra aynı listeye dönebilirsin. İlerlemem sayfasındaki **Hepsini tekrar çöz** düğmesi de yanlış yaptığın soruları tek listede açar.",
      },
      {
        soru: "Sorunun altında çıkan yüzde ne anlama geliyor?",
        cevap:
          "Cevabını gönderdikten sonra, o soruyu deneyenlerin ilk denemelerinde ne kadarının doğru yaptığı gösterilir; çoktan seçmelide her şıkkın ne sıklıkla seçildiği de görünür. Her kişinin yalnızca ilk denemesi sayılır, misafirler de dahildir. Bunlar anonim toplamlardır; kimin ne cevap verdiği görünmez.",
      },
      {
        soru: "\"Tekrar etmen gereken konular\" nasıl seçiliyor?",
        cevap:
          "İlerlemem sayfasında, en az bir sorusunu denediğin ama henüz bitirmediğin konular doğru oranına göre sıralanır; en düşük üçü gösterilir. **Tekrar et** o konunun yalnızca çözmediğin sorularını açar.",
      },
      {
        soru: "Etkinlik takvimi ve günlük seri neyi sayıyor?",
        cevap:
          "Takvim, son 12 haftada her gün kaç cevap gönderdiğini Türkiye saatine göre gösterir; renk koyulaştıkça o gün daha çok çalışmışsındır. Günlük seri, bugünden (bugün henüz bir şey çözmediysen dünden) geriye kesintisiz çalıştığın gün sayısıdır.",
      },
      {
        soru: "Tekrar sayfası nasıl çalışıyor?",
        cevap:
          "Yanlış yaptığın her soru tekrar kutusuna girer ve ertesi gün **Tekrar** sayfasında yeniden sorulur. Doğru cevapladıkça soru bir sonraki kutuya geçer ve 3, 7, 14, 30 gün arayla tekrar gelir; 5. kutuyu da geçince öğrenilmiş sayılır. Yanlış cevap soruyu 1. kutuya döndürür. Bir soruyu ilk kez yanlış yaptığında aynı kavramdan henüz görmediğin iki soru da eklenir; bunlar önce yedek havuzdan seçilir. Günde en çok 20 tekrar yapılır, menüdeki sayı bugün kaç soru beklediğini gösterir. E-posta ile hatırlatma yapılmaz.",
      },
      {
        soru: "Tekrar'da gelen bazı sorular neden soru havuzunda yok?",
        cevap:
          "Türetilmiş soruların bir kısmı **yedek havuzdadır**: soru havuzunda ve ilerleme toplamlarında görünmez, yalnızca Tekrar sayfasında çıkar. Bir kavramda yanlış yaptığında o kavramın yedek sorularından biri gelir; böylece cevabını önceden görmediğin, gerçekten yeni bir soruyla kendini sınarsın.",
      },
      {
        soru: "Günlük hedef, alev ve rozetler nedir?",
        cevap:
          "Günlük hedef, bir günde vermek istediğin doğru cevap sayısıdır (başlangıçta 10). Hedefe ulaştığın an kısa bir kutlama görürsün; hedefi **Ayarlar**'dan değiştirebilir ya da kapatabilirsin. Takvimde 10 doğru yaptığın günlerde kıvılcım, 25'te parıltı görünür; 50 doğruya ulaştığın günün kutusu alev alır. Rozetler 7, 30 ve 100 günlük seriler gibi kişisel hedeflerdir. Bunları yalnızca sen görürsün; sıralama ya da başkalarıyla karşılaştırma yoktur.",
      },
    ],
  },
  {
    baslik: "MatStudio",
    sorular: [
      {
        soru: "Kodum bir sunucuya gönderiliyor mu?",
        cevap:
          "Hayır. MatStudio ve derslerdeki örnekler senin tarayıcında çalışan küçük bir yorumlayıcıyla çalışır. Kodun yalnızca sen bir laboratuvar kaydı olarak paylaşırsan sunucuya gider.",
      },
      {
        soru: "MatStudio nedir?",
        cevap:
          "Tarayıcıda çalışan, açık kaynaklı küçük bir sayısal hesap ortamıdır. `.m` betik sözdizimini kullanır ve ders için gereken kadarını destekler: vektörler ve matrisler, indeksleme, aralıklar (`0:0.1:1`), eleman eleman işlemler (`.*`, `./`, `.^`), `for`, `while`, `if`, temel fonksiyonlar (`sum`, `mean`, `std`, `conv`, `fft`, `abs`, `angle` gibi) ve `plot`, `stem`, `histogram`, `bar`, `subplot` ile çizim. Desteklenmeyen bir fonksiyon kullanırsan komut penceresi bunu açıkça söyler. Ödevlerini dersin istediği masaüstü yazılımda ya da GNU Octave ile de denemelisin.",
      },
      {
        soru: "Ders içindeki editör çok kısa. Büyütebilir miyim?",
        cevap:
          "Evet. Editörün alt kenarını aşağı sürükle (klavyeyle odaklanıp ↑ ve ↓ da olur); en fazla kodun tamamı görünecek kadar uzar. **Tümünü göster** tek tıkla bu boya getirir, alt kenara çift tıklamak varsayılan boya döndürür.",
      },
      {
        soru: "MatStudio'daki betiklerim nerede saklanıyor?",
        cevap:
          "Bu tarayıcıda saklanır. Başka bir cihaza taşımak için betiği `.m` dosyası olarak indirebilir, sonra orada yükleyebilirsin.",
      },
      {
        soru: "Pencereleri karıştırdım, eski düzene nasıl dönerim?",
        cevap:
          "MatStudio'da Düzen menüsünden \"Varsayılan düzene dön\"e bas. Beğendiğin bir düzeni aynı menüden adıyla kaydedebilirsin; giriş yaptıysan hesabına kaydedilir.",
      },
    ],
  },
  {
    baslik: "Hesap ve gizlilik",
    sorular: [
      {
        soru: "Hangi çerezler kullanılıyor?",
        cevap:
          "Yalnızca oturumunu tutan tek bir çerez. Analitik, reklam ya da takip çerezi yoktur. Ayrıntılar gizlilik sayfasında.",
      },
      {
        soru: "Hesabımı nasıl silerim?",
        cevap: "Ayarlar → Hesabı sil sekmesinden. Hesabın, denemelerin ve paylaşımların kalıcı olarak silinir.",
      },
      {
        soru: "Bir soruda hata buldum. Ne yapmalıyım?",
        cevap:
          "Giriş yaptıysan menüdeki Mesajlarım'dan yöneticiye yazabilirsin. GitHub'ı kullanıyorsan Hakkında sayfasındaki bağlantıdan sorun da bildirebilirsin.",
      },
      {
        soru: "Ben de soru ekleyebilir miyim?",
        cevap: "Evet. Giriş yaptıktan sonra Soru öner sayfasından gönderebilirsin; yönetici inceleyip uygun bulursa havuza ekler.",
      },
    ],
  },
];
