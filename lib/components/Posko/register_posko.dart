import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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

class RegisterPoskoScreen extends StatefulWidget {
  static const routeName = '/register-posko';
  final String apiKey = dotenv.env['MAP_API_KEY']!;
  final double latitude = -7.2016;
  final double longitude = 112.7378;

  RegisterPoskoScreen({super.key});

  @override
  State<RegisterPoskoScreen> createState() => _RegisterPoskoScreenState();
}

class _RegisterPoskoScreenState extends State<RegisterPoskoScreen> {
  late GoogleMapController _mapController;
  final Set<Marker> _markers = {};
  bool _showMap = false;

  final List<bool> _selectedOptions =
      List.generate(fokusPantauOptions.length, (_) => false);
  final TextEditingController _fokusPantauController = TextEditingController();

  void _updateFokusPantauText() {
    final selectedItems = fokusPantauOptions
        .where((option) => _selectedOptions[fokusPantauOptions.indexOf(option)])
        .toList();
    _fokusPantauController.text = selectedItems.join(', ');
  }

  @override
  void initState() {
    super.initState();
    // Initialize marker
    _markers.add(
      Marker(
        markerId: const MarkerId('posko_location'),
        position: LatLng(widget.latitude, widget.longitude),
        infoWindow: const InfoWindow(title: 'KSOP Utama Tanjung Perak'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'POSKO',
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                DropdownMenuItem(
                    value: 'Posko A',
                    child:
                        Text('Posko A', style: TextStyle(color: Colors.black))),
                DropdownMenuItem(
                    value: 'Posko B',
                    child:
                        Text('Posko B', style: TextStyle(color: Colors.black))),
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
                DropdownMenuItem(
                    value: 'Event A',
                    child:
                        Text('Event A', style: TextStyle(color: Colors.black))),
                DropdownMenuItem(
                    value: 'Event B',
                    child:
                        Text('Event B', style: TextStyle(color: Colors.black))),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 10),
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
                DropdownMenuItem(
                    value: 'UPT Kementerian Perhubungan',
                    child: Text(
                      'UPT Kementerian Perhubungan',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                DropdownMenuItem(
                    value: 'Pemerintah Daerah',
                    child: Text(
                      'Pemerintah Daerah',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                DropdownMenuItem(
                    value: 'Kepolisian',
                    child: Text(
                      'Kepolisian',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                DropdownMenuItem(
                    value: 'TNI',
                    child: Text(
                      'TNI',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                DropdownMenuItem(
                    value: 'BASARNAS',
                    child: Text(
                      'BASARNAS',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                DropdownMenuItem(
                    value: 'BMKG',
                    child: Text(
                      'BMKG',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                DropdownMenuItem(
                    value: 'Jasa Raharja',
                    child: Text(
                      'Jasa Raharja',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                DropdownMenuItem(
                    value: 'Operator Transportasi',
                    child: Text(
                      'Operator Transportasi',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                DropdownMenuItem(
                    value: 'Kementerian / Lembaga Lainnya',
                    child: Text(
                      'Kementerian / Lembaga Lainnya',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                DropdownMenuItem(
                    value: 'Asosiasi Radio Amatir',
                    child: Text(
                      'Asosiasi Radio Amatir',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                DropdownMenuItem(
                    value: 'Asosiasi Lainnya',
                    child: Text(
                      'Asosiasi Lainnya',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                DropdownMenuItem(
                    value: 'Posko Lainnya',
                    child: Text(
                      'Posko Lainnya',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                DropdownMenuItem(
                    value: 'Operator Lainnya',
                    child: Text(
                      'Operator Lainnya',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                DropdownMenuItem(
                    value: 'Badan Usaha Lainnya',
                    child: Text(
                      'Badan Usaha Lainnya',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
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
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Lokasi Posko',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
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
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _showMap = !_showMap;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                minimumSize: const Size(120, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Pilih Lewat Peta',
                  style: TextStyle(fontSize: 14)),
            ),
            const SizedBox(height: 10),
            // Map will only show when _showMap is true
            if (_showMap)
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: LatLng(widget.latitude, widget.longitude),
                          zoom: 15,
                        ),
                        markers: _markers,
                        mapType: MapType.normal,
                        onMapCreated: (GoogleMapController controller) {
                          _mapController = controller;
                        },
                        myLocationEnabled: false,
                        myLocationButtonEnabled: false,
                        zoomControlsEnabled: false,
                        mapToolbarEnabled: false,
                      ),
                    ),
                  )),

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
                        builder:
                            (BuildContext context, StateSetter setDialogState) {
                          return SizedBox(
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
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0, vertical: 4.0),
                                        child: Row(
                                          children: [
                                            Checkbox(
                                              value: _selectedOptions[index],
                                              onChanged: (bool? value) {
                                                setDialogState(() {
                                                  _selectedOptions[index] =
                                                      value ?? false;
                                                });
                                              },
                                              checkColor: Colors.white,
                                              activeColor: Colors.blue,
                                              side: BorderSide(
                                                  color: Colors.white),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.pink,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Text('Batal',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Text('OK',
                                              style: TextStyle(
                                                  color: Colors.white)),
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
            const SizedBox(height: 7),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 243, 18, 18),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Batal'),
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
      )),
    );
  }
}
