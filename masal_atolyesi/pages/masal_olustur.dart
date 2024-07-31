import 'package:flutter/material.dart';

class MasalOlusturPage extends StatefulWidget {
  const MasalOlusturPage({Key? key}) : super(key: key);

  @override
  MasalOlusturPageState createState() => MasalOlusturPageState();
}

class MasalOlusturPageState extends State<MasalOlusturPage> {
  final TextEditingController _ogutController = TextEditingController();
  final TextEditingController _karakterlerController = TextEditingController();
  final TextEditingController _mekanController = TextEditingController();
  String _story = '';
  bool _isLoading = false;
  bool _isError = false;

  void _generateStory() {
    setState(() {
      _isLoading = true;
      _isError = false;
      _story = '';

      // Simulating a story generation process
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _story = "Gemini,çocuklar için ${_ogutController.text} öğüdünü veren, ${_karakterlerController.text} karakterleri ve ${_mekanController.text} mekanında geçen bir masal oluştur.";
          _isLoading = false;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFECEF),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              "Masal Oluştur",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _ogutController,
              decoration: const InputDecoration(
                labelText: "Öğüt",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.bookmark),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _karakterlerController,
              decoration: const InputDecoration(
                labelText: "Karakterler",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _mekanController,
              decoration: const InputDecoration(
                labelText: "Mekan",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.place),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC09F),
                ),
                onPressed: _generateStory,
                child: _isLoading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : const Text("Masalı Oluştur"),
              ),
            ),
            const SizedBox(height: 20),
            _isError
                ? const Center(
                    child: Text(
                      'Hikaye oluşturulurken bir hata meydana geldi.',
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                : _story.isNotEmpty
                    ? Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            _story,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      )
                    : Container(),
          ],
        ),
      ),
    );
  }
}
