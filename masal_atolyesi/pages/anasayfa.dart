import 'package:flutter/material.dart';

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
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Masalını oluşturmaya hazır mısın?",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildStoryCard(
                      context,
                      "Kayıp Yıldız Tozu",
                      "Karanlıktan sonra aydınlık gelir.",
                      "Gök kubbenin en parlak yıldızıydı o. Her gece pırıltısıyla dünyayı aydınlatır, çocukların hayallerini süslerdi. Ama bir gece, ansızın kayboldu. Yıldızın ışığı söndü, gökyüzü karardı. Küçük bir kız olan Aylin, yıldızın yokluğuna çok üzülmüştü. Onun ışığı olmadan geceleri uyuyamıyor, hayallerini göremiyordu. Bir gün, Aylin yıldızın peşine düşmeye karar verdi. Ormanda yaşayan bilge baykuşa gitti ve ondan yardım istedi. Baykuş, Aylin'e yıldızın düştüğü yeri gösterdi. Aylin, uzun bir yolculuktan sonra yıldızın düştüğü yere ulaştı. Yıldız, paramparça olmuştu ve ışığı sönmüştü. Aylin, yıldızın parçalarını toplamaya başladı. Her bir parçayı özenle avuçlarının içine aldı ve kalbine dokundurdu. Yıldızın parçaları, Aylin'in kalbindeki sevgi ve umutla birleşerek yeniden canlandı. Işığı yeniden parlamaya başladı. Aylin, yıldızı gökyüzüne fırlattı ve yıldız eski yerini aldı. O gece, gökyüzü yeniden aydınlandı. Çocuklar hayallerini görmeye, Aylin ise huzurla uyumaya başladı. Yıldızın kaybolmasıyla başlayan bu macera, Aylin'e önemli bir ders vermişti: Sevgi ve umut, her zaman karanlığı aydınlatır."),
                  _buildStoryCard(
                      context,
                      "Ayıcık ve Sihirli Orman",
                      "Bir elin nesi var, iki elin sesi var.",
                      "Ayıcık ve Sihirli Orman masalının tam metni burada yer alacak."),
                  _buildStoryCard(
                      context,
                      "Bulutların Rüyası",
                      "Hayal kurmak bedava, gerçeğe adım atmak paha biçilemez.",
                      "Bulutların Rüyası masalının tam metni burada yer alacak."),
                  _buildStoryCard(
                      context,
                      "Küçük Deniz Kabuğu",
                      "Her koyun kendi bacağından asılır, ama sürünün gücü birlikten gelir.",
                      "Küçük Deniz Kabuğu masalının tam metni burada yer alacak."),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC09F),
                ),
                onPressed: () {
                  // Masal oluşturma işlemi
                },
                child: const Text("Masal Oluşturmaya Başla"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStoryCard(
      BuildContext context, String title, String subtitle, String fullStory) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  MasalDetayiPage(title: title, story: fullStory),
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

  const MasalDetayiPage({Key? key, required this.title, required this.story})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          story,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
