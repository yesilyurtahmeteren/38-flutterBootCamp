import 'package:flutter/material.dart';
import '../main.dart';
import 'kayit_ol.dart';

class GirisYapPage extends StatelessWidget {
  const GirisYapPage({super.key});

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Image.asset(
                'assets/masal_atolyesi.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Giriş Yap",
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MainPage()),
                );
              },
              child: const Text(
                "Giriş Yap",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Ya da",
              style: TextStyle(fontSize: 16, color: Color(0xFF7B3F61)),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(color: Colors.black),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
              onPressed: () {
                // Google ile giriş işlemi
              },
              icon: Image.asset('assets/google_logo.png', height: 24), // Add your Google logo asset here
              label: const Text("Google ile giriş yap"),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hesabınız yok mu?",
                  style: TextStyle(color: Color(0xFF7B3F61)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const KayitOlPage()),
                    );
                  },
                  child: const Text(
                    "Hesap Oluştur",
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
