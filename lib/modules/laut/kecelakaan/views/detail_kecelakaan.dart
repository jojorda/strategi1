import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AccidentReportPage extends StatefulWidget {
  final double latitude = -7.2016;
  final double longitude = 112.7378;

  const AccidentReportPage({Key? key}) : super(key: key);

  @override
  State<AccidentReportPage> createState() => _AccidentReportPageState();
}

// Kemudian buat State class
class _AccidentReportPageState extends State<AccidentReportPage> {
  late GoogleMapController _mapController;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    // Initialize marker
    _markers.add(
      Marker(
        markerId: const MarkerId('accident_location'),
        position: LatLng(widget.latitude, widget.longitude),
        infoWindow: const InfoWindow(title: 'Lokasi Kecelakaan'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Kecelakaan',
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[300],
                child: Image.asset(
                  'assets/images/Image.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kecelakaan Lalulintas dan Angkutan Jalan tabrakan antara Mobil Bus Elf R-1724-EA dengan Kereta api Lodaya Pagi',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Matra',
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 11,
                                          ),
                                        ),
                                        Text(
                                          'Darat',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tanggal & Waktu Kejadian',
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 11,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Sabtu, 11 Mei 2021',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Jenis Kecelakaan',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 11,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.orange[50],
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  'Tabrakan',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Sarana yang Terlibat',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 11,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      'Bus Putera Fajar',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.cyan[50],
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      'KA Kargo Mendung',
                                      style: TextStyle(
                                        color: Colors.cyan[500],
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Uraian',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(
                          'Pada hari Selasa, 18 April 2014 pukul 10.30 WIB mobil bus Isuzu Elf R-1724-EA (selanjutnya disebut mobil bus) membawa rombongan keluarga sebanyak 17 orang dari arah Desa Purwodadi, Kecamatan Nusawungu, kabupaten Cilacap menuju Banjarnegara. Pada hari yang sama, pukul 11.00 WIB berangkat KA 79 Lodaya Pagi (selanjutnya disebut KA79) yang terdiri dari 1 (satu) lokomotif, 8 (delapan) kereta penumpang, 1 (satu) kereta makan dan 1 (satu) kereta aling-aling, membawa penumpang dari St. Solo Balapan menuju St. Bandung. Sekitar pukul 11.15 WIB pada saat mobil bus akan melintas di perlintasan sebidang JPL nomor 482 km 404 + 938, Petugas JPL belum menutup palang pintu serta membunyikan sirine. Saat mobil bus maju mendekati rel perlintasan sebidang, Petugas JPL yang berada di perlintasan sebidang menurunkan palang pintu sehingga mengenai bagian atap mobil bus. Menyadari hal itu Petugas JPL kembali menaikkan palang pintu',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: Colors.grey[100]!, width: 1),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.all(9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/Hansaplast.svg',
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Korban Meninggal',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 14),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Meninggal Dunia',
                                              style: TextStyle(fontSize: 11),
                                            ),
                                            Text(
                                              '2 Orang',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Luka Berat',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                              '12 Orang',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Luka Sedang',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                              '12 Orang',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 14),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Luka Ringan',
                                              style: TextStyle(fontSize: 11),
                                            ),
                                            Text(
                                              '2 Orang',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Hilang',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                              '12 Orang',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Selamat',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                              '12 Orang',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'On Scene Commander',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          'Dimas Budiman',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'UPT Kemenhub Terkait',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          'BPTD Kelas II Banten',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'PIC PELAPOR',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          'Budi Hariono',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Kerusakan Fisik',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          'Tidak ada kerusakan pada kereta dan kereta tetapp beroperasi sebagaimana mestinya setelah kejadian laka, hanya melaporkan ke stasiun terdekat mengenai kejadian sesuai dengan prosedur yang berlaku.',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Dampak Lingkungan',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          'Tidak Ada',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Dampak Lalu Lintas',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          'Tidak Ada',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Status Penanggulangan',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          '12 Orang',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Lokasi',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          'Ds. Pucung Kec. Kroya Kab. Cilacap Jawa Tengah',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
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
                                    target: LatLng(
                                        widget.latitude, widget.longitude),
                                    zoom: 15,
                                  ),
                                  markers: _markers,
                                  mapType: MapType.normal,
                                  onMapCreated:
                                      (GoogleMapController controller) {
                                    _mapController = controller;
                                  },
                                  myLocationEnabled: false,
                                  myLocationButtonEnabled: false,
                                  zoomControlsEnabled: false,
                                  mapToolbarEnabled: false,
                                ),
                              ),
                            )),
                        SizedBox(height: 14),
                        Text(
                          'Koordinat',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          '-7.2016,112.7378',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Laporan Final',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Unduh Laporan',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue[900],
                                ),
                              ),
                              Icon(
                                Icons.insert_drive_file_outlined,
                                color: Colors.blue[900],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 19),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
