import 'package:flutter/material.dart';
import 'masal_olustur.dart';

class AnasayfaPage extends StatelessWidget {
  const AnasayfaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFECEF),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Selam, Ahmet 👋",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF7B3F61)),
            ),
            const SizedBox(height: 10),
            const Text(
              "Masalını oluşturmaya hazır mısın?",
              style: TextStyle(fontSize: 16, color: Color(0xFF7B3F61)),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildStoryCard(
                    context,
                    "Kayıp Yıldız Tozu",
                    "Karanlıktan sonra aydınlık gelir.",
                    "Gök kubbenin en parlak yıldızıydı o. Her gece pırıltısıyla dünyayı aydınlatır, çocukların hayallerini süslerdi. Ama bir gece, ansızın kayboldu. Yıldızın ışığı söndü, gökyüzü karardı. Küçük bir kız olan Aylin, yıldızın yokluğuna çok üzülmüştü. Onun ışığı olmadan geceleri uyuyamıyor, hayallerini göremiyordu. Bir gün, Aylin yıldızın peşine düşmeye karar verdi. Ormanda yaşayan bilge baykuşa gitti ve ondan yardım istedi. Baykuş, Aylin'e yıldızın düştüğü yeri gösterdi. Aylin, uzun bir yolculuktan sonra yıldızın düştüğü yere ulaştı. Yıldız, paramparça olmuştu ve ışığı sönmüştü. Aylin, yıldızın parçalarını toplamaya başladı. Her bir parçayı özenle avuçlarının içine aldı ve kalbine dokundurdu. Yıldızın parçaları, Aylin'in kalbindeki sevgi ve umutla birleşerek yeniden canlandı. Işığı yeniden parlamaya başladı. Aylin, yıldızı gökyüzüne fırlattı ve yıldız eski yerini aldı. O gece, gökyüzü yeniden aydınlandı. Çocuklar hayallerini görmeye, Aylin ise huzurla uyumaya başladı. Yıldızın kaybolmasıyla başlayan bu macera, Aylin'e önemli bir ders vermişti: Sevgi ve umut, her zaman karanlığı aydınlatır.",
                  ),
                  _buildStoryCard(
                    context,
                    "Ayıcık ve Sihirli Orman",
                    "Bir elin nesi var, iki elin sesi var.",
                    "Bir zamanlar, büyük ve gizemli bir ormanda küçük bir ayıcık yaşardı. Ayıcığın adı Tufi idi. Tufi, ormanın derinliklerindeki bir mağarada yalnız yaşardı ve hep diğer hayvanlarla arkadaş olmak isterdi. Ancak utangaçlığı nedeniyle onlarla konuşamazdı. Bir gün, ormanda dolaşırken sihirli bir ağaca rastladı. Ağaç ona, eğer cesaret eder ve diğer hayvanlardan yardım isterse, onun tüm dileklerini gerçekleştireceğini söyledi. Tufi, önce çekinse de cesaretini topladı ve ormandaki diğer hayvanlara gitmeye karar verdi. İlk olarak, sincap Piko'ya yardım istedi. Piko, Tufi'nin isteğini duyunca hemen ona yardım etmeye başladı. Daha sonra Tufi, baykuş Huhu ve geyik Lala'dan da yardım aldı. Birlikte çalışarak ormanda büyük bir parti düzenlediler ve bu parti sayesinde Tufi, tüm hayvanlarla arkadaş oldu. Tufi, bu macera sayesinde bir elin nesi var, iki elin sesi var atasözünün ne kadar doğru olduğunu anladı.",
                  ),
                  _buildStoryCard(
                    context,
                    "Bulutların Rüyası",
                    "Hayal kurmak bedava, gerçeğe adım atmak paha biçilemez.",
                    "Bir zamanlar, gökyüzünde yaşlı ve bilge bir bulut yaşardı. Bu bulutun adı Pofuduk'tu. Pofuduk, diğer bulutlara göre daha farklıydı çünkü hayal kurmayı çok severdi. Her gece yıldızların altında hayaller kurar, gökyüzünde özgürce dolaşmanın keyfini çıkarırdı. Bir gün, Pofuduk'un en büyük hayali olan yeryüzüne inip çocuklarla oynamak istediğini düşündü. Bu hayalini gerçekleştirmek için gökyüzünün en yüksek noktasına çıktı ve rüzgarın onu yeryüzüne indirmesini bekledi. Rüzgar, Pofuduk'un bu isteğini duyunca ona yardım etmeye karar verdi ve Pofuduk'u yavaşça yeryüzüne indirdi. Pofuduk, yeryüzüne indiğinde çocuklarla tanıştı ve onlarla oynamaya başladı. Çocuklar, Pofuduk'u çok sevdiler ve onunla birlikte hayal kurdular. Pofuduk, bu deneyim sayesinde hayal kurmanın bedava olduğunu ve gerçeğe adım atmanın paha biçilemez olduğunu anladı. O günden sonra, Pofuduk ve çocuklar, her gün gökyüzünde buluşup hayal kurmaya devam ettiler.",
                  ),
                  _buildStoryCard(
                    context,
                    "Küçük Deniz Kabuğu",
                    "Her koyun kendi bacağından asılır, ama sürünün gücü birlikten gelir.",
                    "Bir zamanlar, büyük ve mavi bir okyanusta küçük bir deniz kabuğu yaşardı. Kabuğun adı Sedef'ti. Sedef, okyanusun derinliklerinde tek başına yaşardı ve diğer deniz canlılarıyla pek fazla iletişim kurmazdı. Ancak, bir gün büyük bir fırtına çıktı ve Sedef, fırtınadan korunmak için diğer deniz canlılarıyla birlikte çalışması gerektiğini anladı. Sedef, önce çekinse de cesaretini topladı ve diğer deniz canlılarından yardım istedi. Balıklar, mercanlar ve deniz yıldızları, Sedef'in yardım isteğini duyunca hemen ona yardım etmeye başladılar. Birlikte çalışarak büyük bir barınak yaptılar ve fırtınadan korundular. Fırtına sona erdiğinde, Sedef, bu deneyim sayesinde her koyunun kendi bacağından asıldığını, ama sürünün gücünün birlikten geldiğini anladı. O günden sonra, Sedef ve diğer deniz canlıları, her zaman birlikte çalışarak okyanusun derinliklerinde mutlu bir şekilde yaşamaya devam ettiler.",
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC09F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                ),
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MasalOlusturPage(),
                    ),
                  );
                },
                child: const Text(
                  "Masal Oluşturmaya Başla",
                  style: TextStyle(color: Color(0xFF7B3F61), fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStoryCard(BuildContext context, String title, String subtitle, String fullStory) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF7B3F61)),
        ),
        subtitle: Text(subtitle, style: const TextStyle(color: Color(0xFF7B3F61))),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MasalDetayiPage(title: title, story: fullStory),
            ),
          );
        },
      ),
    );
  }
}

class MasalDetayiPage extends StatelessWidget {
  final String title;
  final String story;

  const MasalDetayiPage({Key? key, required this.title, required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFECEF),
        title: Text(
          title,
          style: const TextStyle(color: Color(0xFF7B3F61)),
        ),
        iconTheme: const IconThemeData(color: Color(0xFF7B3F61)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          story,
          style: const TextStyle(fontSize: 16, color: Color(0xFF7B3F61)),
        ),
      ),
    );
  }
}
