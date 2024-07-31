import 'package:flutter/material.dart';
import 'pages/anasayfa.dart';
import 'pages/masal_olustur.dart';
import 'pages/profil.dart';
import 'pages/giris_yap.dart';

void main() {
  runApp(const MasalAtolyesiApp());
}

class MasalAtolyesiApp extends StatelessWidget {
  const MasalAtolyesiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masal Atölyesi',
      theme: ThemeData(
        primaryColor: const Color(0xFFFFECEF),
        scaffoldBackgroundColor: const Color(0xFFFFECEF),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFFC09F),
          ),
        ),
      ),
      home: const GirisYapPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
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
        backgroundColor: const Color(0xFFFFECEF),
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Masal Oluştur',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFFF82AB),
        unselectedItemColor: const Color(0xFFE5C4B4),
        onTap: _onItemTapped,
        backgroundColor: const Color(0xFFFFF5F2),
      ),
    );
  }
}
