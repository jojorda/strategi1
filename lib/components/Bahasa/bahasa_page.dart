import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/modules/index/controllers/index_controller.dart';

class BahasaPage extends StatefulWidget {
  const BahasaPage({super.key});

  @override
  _BahasaPageState createState() => _BahasaPageState();
}

class _BahasaPageState extends State<BahasaPage> {
  final IndexController indexController = Get.put(IndexController());
  String selectedLanguage = 'id'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A237E),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'PENGATURAN',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.center, 
              child: Text(
                'UBAH BAHASA',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0A2574),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Bahasa Indonesia
            _buildLanguageOption(
              languageCode: 'id',
              languageText: 'Bahasa Indonesia',
              flagAsset: 'assets/images/indo.png',
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.grey, 
              thickness: 1, // Ketebalan garis (opsional)
            ),
            const SizedBox(height: 10),

            // English
            // _buildLanguageOption(
            //   languageCode: 'en',
            //   languageText: 'English',
            //   flagAsset: 'assets/images/inggris.png',
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageOption({
    required String languageCode,
    required String languageText,
    required String flagAsset,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedLanguage = languageCode;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            _buildFlag(flagAsset),
            const SizedBox(width: 16),
            Text(
              languageText,
              style: const TextStyle(fontSize: 16.0),
            ),
            const Spacer(),
            Radio<String>(
              value: languageCode,
              groupValue: selectedLanguage,
              activeColor: const Color(0xFF0A2574),
              fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return const Color(0xFF0A2574); 
                }
                return Colors.grey; 
              }),
              onChanged: (value) {
                setState(() {
                  selectedLanguage = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFlag(String assetPath) {
    return Container(
      width: 36,
      height: 24,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset(assetPath, fit: BoxFit.cover),
      ),
    );
  }
}
