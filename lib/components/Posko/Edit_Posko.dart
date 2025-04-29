import 'package:flutter/material.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/modules/posko/views/posko_detail_screen.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

final List<String> fokusPantauOptions = [
  'Mobilitas Penumpang',
  'Mobilitas Barang',
  'Mobilitas Sarana Angkutan',
  'Kelancaran Transportasi pada Jaringan',
  'Kecelakaan Transportasi',
  'Kejadian Menonjol',
  'Cuaca dan Peringatan Dini',
  'Bencana',
  'Ramp Check',
];
class PoskoData {
  final String jenisPosko;
  final String event;
  final String namaPosko;
  final String alamatPosko;
  final String unitKerjaKoordinator;
  final String pesertaPosko;
  final String koordinatorPosko;
  final String ketuaPosko;
  final String noTelpKetuaPosko;
  final String picPosko;
  final String noTelpPosko;
  final String masaPantau;
  final String titikPantau;
  final List<String> fokusPantau;

  PoskoData({
    required this.jenisPosko,
    required this.event,
    required this.namaPosko,
    required this.alamatPosko,
    required this.unitKerjaKoordinator,
    required this.pesertaPosko,
    required this.koordinatorPosko,
    required this.ketuaPosko,
    required this.noTelpKetuaPosko,
    required this.picPosko,
    required this.noTelpPosko,
    required this.masaPantau,
    required this.titikPantau,
    required this.fokusPantau,
  });
}
class EditPoskoPage extends StatefulWidget {
   static const routeName = '/register-posko';
  final PoskoData poskoData;

  const EditPoskoPage({
    Key? key, 
    required this.poskoData
  }) : super(key: key);

  @override
  State<EditPoskoPage> createState() => _EditPoskoPageState();
}

class _EditPoskoPageState extends State<EditPoskoPage> {
  File? selectedFile;

  void _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image, // Hanya memungkinkan pemilihan file gambar
    );

    if (result != null) {
      setState(() {
        selectedFile = File(result.files.single.path!);
      });
    }
  }

  final List<bool> _selectedOptions = List.generate(fokusPantauOptions.length, (_) => false);
  final TextEditingController _fokusPantauController = TextEditingController();


  void _updateFokusPantauText() {
    final selectedItems = fokusPantauOptions
        .where((option) => _selectedOptions[fokusPantauOptions.indexOf(option)])
        .toList();
    _fokusPantauController.text = selectedItems.join(', ');
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'POSKO',
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Jenis Posko',
                labelStyle: TextStyle(color: Colors.grey[700]),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
              ),
              items: [
                DropdownMenuItem(value: 'Posko A', child: Text('Posko A', style: TextStyle(color: Colors.black))),
                DropdownMenuItem(value: 'Posko B', child: Text('Posko B', style: TextStyle(color: Colors.black))),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 8),

            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Event',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
              ),
              items: [
                DropdownMenuItem(value: 'Event A', child: Text('Event A', style: TextStyle(color: Colors.black))),
                DropdownMenuItem(value: 'Event B', child: Text('Event B', style: TextStyle(color: Colors.black))),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height:10),

            const Text(
              'Nama Posko',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 2),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Alamat Posko',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 2),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Unit Kerja Koordinator',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 2),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Peserta Posko',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 2),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Pilih Peserta Posko',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
              ),
              items: [
                DropdownMenuItem(value: 'UPT Kementerian Perhubungan', child: Text('UPT Kementerian Perhubungan',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
                DropdownMenuItem(value: 'Pemerintah Daerah', child: Text('Pemerintah Daerah',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
                DropdownMenuItem(value: 'Kepolisian', child: Text('Kepolisian',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
                DropdownMenuItem(value: 'TNI', child: Text('TNI',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
                DropdownMenuItem(value: 'BASARNAS', child: Text('BASARNAS',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
                DropdownMenuItem(value: 'BMKG', child: Text('BMKG',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
                DropdownMenuItem(value: 'Jasa Raharja', child: Text('Jasa Raharja',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
                DropdownMenuItem(value: 'Operator Transportasi', child: Text('Operator Transportasi',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
                DropdownMenuItem(value: 'Kementerian / Lembaga Lainnya', child: Text('Kementerian / Lembaga Lainnya',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
                DropdownMenuItem(value: 'Asosiasi Radio Amatir', child: Text('Asosiasi Radio Amatir',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
                DropdownMenuItem(value: 'Asosiasi Lainnya', child: Text('Asosiasi Lainnya',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
                DropdownMenuItem(value: 'Posko Lainnya', child: Text('Posko Lainnya',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
                DropdownMenuItem(value: 'Operator Lainnya', child: Text('Operator Lainnya',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
                DropdownMenuItem(value: 'Badan Usaha Lainnya', child: Text('Badan Usaha Lainnya',  style: TextStyle(fontSize: 12, color: Colors.grey),)),
              ],
              onChanged: (value) {},
              style: TextStyle(fontSize: 12, color: Colors.grey),
              icon: Icon(Icons.arrow_drop_down, color: Colors.grey),
              menuMaxHeight: 400,
            ),
            const SizedBox(height: 5),
            const Text(
              'Koordinator Posko',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 2),
            TextField(
              decoration: InputDecoration(
                labelText: 'Koordinat Posko',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search, color: Colors.grey),
                  onPressed: () {
                    // Tambahkan aksi pencarian di sini
                  },
                ),
              ),
            ),

            const SizedBox(height: 5),
            const Text(
              'Ketua Posko',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 2),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'No Telp Ketua Posko',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 2),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'PIC Posko',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 2),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'No Telp Posko',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 2),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Masa Pantau',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 2),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Titik Pantau',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 2),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Fokus Pantau',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 2),
            TextField(
              readOnly: true,
              controller: _fokusPantauController,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.black,
                      contentPadding: EdgeInsets.zero,
                      content: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setDialogState) {
                          return Container(
                            width: double.maxFinite,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: fokusPantauOptions.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                                        child: Row(
                                          children: [
                                            Checkbox(
                                              value: _selectedOptions[index],
                                              onChanged: (bool? value) {
                                                setDialogState(() {
                                                  _selectedOptions[index] = value ?? false;
                                                });
                                              },
                                              checkColor: Colors.white,
                                              activeColor: Colors.blue,
                                              side: BorderSide(color: Colors.white),
                                            ),
                                            Expanded(
                                              child: Text(
                                                fokusPantauOptions[index],
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.pink,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Text('Batal', style: TextStyle(color: Colors.white)),
                                          onPressed: () => Navigator.pop(context),
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Text('OK', style: TextStyle(color: Colors.white)),
                                          onPressed: () {
                                            setState(() {
                                              _updateFokusPantauText();
                                            });
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
            ),
            const Text(
          "Lampiran",
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(height: 4),
        GestureDetector(
          onTap: _pickFile,
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  color: Colors.grey[200],
                  child: const Text(
                    "Upload",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    selectedFile != null
                        ? selectedFile!.path.split('/').last
                        : "Pilih gambar",
                    style: const TextStyle(color: Colors.black),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          ".jpg, .png, .jpeg",
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(height: 8),
        if (selectedFile != null) 
          Image.file(selectedFile!, height: 100),
        const SizedBox(height: 8),
        if (selectedFile != null) 
          Image.file(selectedFile!, height: 100),
            const SizedBox(height: 7),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'Peringatan!',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Apakah Anda yakin ingin menghapus data ini?\n\Jika Anda melanjutkan, data akan dihapus secara permanen.',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.grey[300],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: const EdgeInsets.symmetric(vertical: 12),
                                    ),
                                    child: const Text(
                                      'Batal',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: const EdgeInsets.symmetric(vertical: 12),
                                    ),
                                    child: const Text(
                                      'Ya',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    );

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 243, 18, 18),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Delete'),
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Simpan'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}