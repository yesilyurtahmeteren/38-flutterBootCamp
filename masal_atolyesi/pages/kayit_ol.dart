import 'package:flutter/material.dart';

class KayitOlPage extends StatelessWidget {
  const KayitOlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFECEF),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 60),
            const Text(
              "Kayıt Ol",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF7B3F61)),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Kullanıcı Adı',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person, color: Color(0xFF7B3F61)),
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Şifre',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock, color: Color(0xFF7B3F61)),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Şifreyi yeniden girin',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock, color: Color(0xFF7B3F61)),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFC09F),
                foregroundColor: const Color(0xFF7B3F61),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              ),
              onPressed: () {
              },
              child: const Text(
                "Kayıt Ol",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hesabınız var mı?",
                  style: TextStyle(color: Color(0xFF7B3F61)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Giriş Yap",
                    style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
