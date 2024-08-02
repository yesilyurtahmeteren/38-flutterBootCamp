import 'package:flutter/material.dart';
import 'giris_yap.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFECEF),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profilim",
          style: TextStyle(color: Color(0xFF7B3F61), fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF7B3F61)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            _buildSectionTitle("Profil Bilgileri"),
            const SizedBox(height: 20),
            _buildTextField("Kullanıcı Adı", "Ahmet"),
            const SizedBox(height: 10),
            _buildPasswordField("Şifre", "**********"),
            const SizedBox(height: 10),
            _buildDropdownField("Dil", "Türkçe", ["Türkçe", "İngilizce"]),
            const SizedBox(height: 20),
            _buildSectionTitle("Diğer"),
            _buildListTile(
              context,
              "Yardım ve Geri Bildirim",
              Icons.help_outline,
              "Yardım ve Geri Bildirim içeriği buraya gelecek.",
            ),
            _buildListTile(
              context,
              "Sıkça Sorulan Sorular (SSS)",
              Icons.question_answer,
              "Yapay Zeka ile Masal Oluşturma Uygulaması için Sıkça Sorulan Sorular:\n\n"
              "1. Uygulamayı nasıl kullanabilirim?\n"
              "   Uygulamayı kullanabilmek için bir hesap oluşturmanız gerekmektedir. Hesap oluşturduktan sonra, yapay zeka ile masallar oluşturabilirsiniz.\n\n"
              "2. Masallarımı nasıl kaydedebilirim?\n"
              "   Oluşturduğunuz masalları uygulama içinde kaydedebilir ve daha sonra tekrar görüntüleyebilirsiniz.\n\n"
              "3. Kişisel bilgilerim güvende mi?\n"
              "   Kişisel bilgilerinizin gizliliği bizim için önemlidir. Gizlilik politikamızı inceleyerek daha fazla bilgi edinebilirsiniz.",
            ),
            _buildListTile(
              context,
              "Kullanım Koşulları ve Gizlilik Politikası",
              Icons.privacy_tip,
              "1. Kabul ve Onay\n\n"
              "Bu uygulamayı ('Uygulama') kullanarak, aşağıdaki Kullanım Koşulları ve Gizlilik Politikası'nı ('Koşullar') okuduğunuzu, anladığınızı ve kabul ettiğinizi onaylıyorsunuz. Eğer bu Koşulları kabul etmiyorsanız, lütfen Uygulamayı kullanmayınız.\n\n"
              "2. Uygulama Kullanımı\n\n"
              "Uygulamayı kullanabilmek için bir hesap oluşturmanız gerekmektedir. Hesap oluştururken doğru ve güncel bilgiler sağlamayı kabul edersiniz. "
              "Uygulama, sadece kişisel ve yasal amaçlarla kullanılmalıdır. Uygulamayı herhangi bir yasa dışı, zararlı veya izinsiz amaçlarla kullanmayacağınızı kabul edersiniz. "
              "Uygulamada oluşturduğunuz içeriklerin telif hakkı size aittir. Ancak, bu içeriği Uygulama içinde kullanmamıza, paylaşmamıza ve dağıtmamıza izin verirsiniz.\n\n"
              "3. Gizlilik Politikası\n\n"
              "Topladığımız Bilgiler: Uygulamayı kullanırken sizden bazı kişisel bilgiler (ad, e-posta, profil fotoğrafı) ve kullanım verileri (masal tercihleri, oluşturulan masallar) toplayabiliriz. "
              "Bu bilgileri Uygulamayı geliştirmek, kişiselleştirmek ve size daha iyi hizmet sunmak için kullanırız. "
              "Bilgilerin Paylaşımı: Kişisel bilgilerinizi üçüncü taraflarla paylaşmayız, ancak yasal zorunluluklar veya Uygulamanın güvenliğini sağlamak gibi durumlarda paylaşım yapabiliriz. "
              "Çerezler: Uygulamayı kullanırken çerezler kullanabiliriz. Çerezler, Uygulamanın daha iyi çalışmasını sağlamak ve kullanıcı deneyimini geliştirmek için kullanılır.\n\n"
              "4. Fikri Mülkiyet\n\n"
              "Uygulama ve içindeki tüm içerik (metinler, görseller, logolar, yazılım vb.), [Uygulama Geliştiricisi Adı]'na aittir ve fikri mülkiyet hakları ile korunmaktadır. Bu içeriği izinsiz olarak kopyalayamaz, çoğaltamaz veya dağıtamazsınız.\n\n"
              "5. Sorumluluğun Sınırlandırılması\n\n"
              "Uygulama 'olduğu gibi' sunulmaktadır. Uygulamanın hatasız, kesintisiz veya güvenli olacağına dair bir garanti vermemekteyiz. "
              "Uygulamayı kullanmanızdan kaynaklanabilecek herhangi bir doğrudan, dolaylı, özel veya sonuç olarak ortaya çıkan zararlardan sorumlu tutulamayız.\n\n"
              "6. Değişiklikler\n\n"
              "Bu Koşulları zaman zaman güncelleyebiliriz. Güncellemeler hakkında sizi bilgilendireceğiz ve güncellenmiş Koşulları kabul etmediğiniz takdirde Uygulamayı kullanmaktan vazgeçebilirsiniz.\n\n"
              "7. İletişim\n\n"
              "Bu Koşullarla ilgili herhangi bir sorunuz veya endişeniz varsa, lütfen bizimle iletişime geçin: [E-posta Adresi]\n\n"
              "Bu Kullanım Koşulları ve Gizlilik Politikası, [Tarih] tarihinde yürürlüğe girmiştir."
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC09F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: const BorderSide(color: Color(0xFF7B3F61)),
                  ),
                  elevation: 5,
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => GirisYapPage()),
                    (Route<dynamic> route) => false,
                  );
                },
                icon: const Icon(Icons.logout, color: Color(0xFF7B3F61)),
                label: const Text(
                  "Çıkış Yap",
                  style: TextStyle(color: Color(0xFF7B3F61)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                "v1.0.2",
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF7B3F61),
      ),
    );
  }

  Widget _buildTextField(String label, String text) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF7B3F61)),
        ),
      ),
      controller: TextEditingController()..text = text,
    );
  }

  Widget _buildPasswordField(String label, String text) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF7B3F61)),
        ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.visibility_off),
          onPressed: () {
            // Şifre görünürlüğünü değiştirme işlemi yapılabilir
          },
        ),
      ),
      obscureText: true,
      controller: TextEditingController()..text = text,
    );
  }

  Widget _buildDropdownField(String label, String value, List<String> items) {
    return DropdownButtonFormField<String>(
      value: value,
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF7B3F61)),
        ),
      ),
    );
  }

  Widget _buildListTile(BuildContext context, String title, IconData icon, String content) {
    return ListTile(
      title: Text(title),
      trailing: Icon(icon, color: const Color(0xFF7B3F61)),
      onTap: () {
        _showDialog(context, title, content);
      },
    );
  }

  void _showDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(child: Text(content)),
          actions: <Widget>[
            TextButton(
              child: const Text("Kapat"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
