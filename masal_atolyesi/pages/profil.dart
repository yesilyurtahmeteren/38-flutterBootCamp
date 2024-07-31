import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFECEF),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              "Profilim",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: "Kullanıcı Adı",
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController()..text = "Ahmet", // Örnek kullanıcı adı
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Şifre",
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.visibility_off),
                  onPressed: () {
                    // Şifre görünürlüğünü değiştirme işlemi yapılabilir
                  },
                ),
              ),
              obscureText: true,
              controller: TextEditingController()..text = "**********", // Örnek şifre
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: "Türkçe",
              items: const [
                DropdownMenuItem(value: "Türkçe", child: Text("Türkçe")),
                DropdownMenuItem(value: "İngilizce", child: Text("İngilizce")),
              ],
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Dil",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text("Yardım ve Geri Bildirim"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Yardım ve Geri Bildirim sayfasına yönlendirme yapılabilir
              },
            ),
            ListTile(
              title: const Text("Sıkça Sorulan Sorular (SSS)"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Sıkça Sorulan Sorular sayfasına yönlendirme yapılabilir
              },
            ),
            ListTile(
              title: const Text("Kullanım Koşulları ve Gizlilik Politikası"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Kullanım Koşulları ve Gizlilik Politikası sayfasına yönlendirme yapılabilir
              },
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC09F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  // Çıkış yapma işlemleri burada yapılabilir
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
}
