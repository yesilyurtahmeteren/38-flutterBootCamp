import 'package:flutter/material.dart';
import 'pages/anasayfa.dart';
import 'pages/masal_olustur.dart';
import 'pages/profil.dart';
import 'pages/giris_yap.dart';

void main() {
  runApp(const MasalAtolyesiApp());
}

class MasalAtolyesiApp extends StatelessWidget {
  const MasalAtolyesiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masal Atölyesi',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 255, 128, 147),
        scaffoldBackgroundColor: const Color(0xFFFFECEF),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 118, 108),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFECEF),
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Color(0xFF7B3F61),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          iconTheme: IconThemeData(color: Color(0xFF7B3F61)),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFFFF5F2),
          selectedItemColor: Color(0xFFFF82AB),
          unselectedItemColor: Color(0xFFE5C4B4),
        ),
      ),
      home: const GirisYapPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const AnasayfaPage(),
    const MasalOlusturPage(),
    const ProfilPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Masal Atölyesi'),
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/masal_atolyesi_logo.png',
                height: 40,
              ),
            ),
            label: 'Masal Oluştur',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
