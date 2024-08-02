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
          _story = "Gemini, çocuklar için ${_ogutController.text} öğüdünü veren, ${_karakterlerController.text} karakterleri ve ${_mekanController.text} mekanında geçen bir masal oluştur.";
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
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Masal Oluştur",
          style: TextStyle(color: Color(0xFF7B3F61), fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              _buildSectionTitle("Masal Öğeleri"),
              const SizedBox(height: 20),
              _buildTextField("Öğüt", _ogutController, Icons.bookmark),
              const SizedBox(height: 10),
              _buildTextField("Karakterler", _karakterlerController, Icons.person),
              const SizedBox(height: 10),
              _buildTextField("Mekan", _mekanController, Icons.place),
              const SizedBox(height: 20),
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
                  onPressed: _generateStory,
                  child: _isLoading
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          "Masalı Oluştur",
                          style: TextStyle(color: Color(0xFF7B3F61), fontWeight: FontWeight.bold),
                        ),
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
                      ? SingleChildScrollView(
                          child: Text(
                            _story,
                            style: const TextStyle(fontSize: 16, color: Color(0xFF7B3F61)),
                          ),
                        )
                      : Container(),
            ],
          ),
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

  Widget _buildTextField(String label, TextEditingController controller, IconData icon) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF7B3F61)),
        ),
        prefixIcon: Icon(icon, color: const Color(0xFF7B3F61)),
      ),
    );
  }
}
