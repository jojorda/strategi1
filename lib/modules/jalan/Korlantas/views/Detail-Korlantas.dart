import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:strategi_hub_app/modules/jalan/Korlantas/controllers/jalan_korlantas_controller.dart';

class DetailJalanKorlantas extends GetView<JalanKorlantasController> {
  const DetailJalanKorlantas({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Laka Lantas',
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                              // Text(
                              //   'Kecelakaan Lalulintas dan Angkutan Jalan tabrakan antara Mobil Bus Elf R-1724-EA dengan Kereta api Lodaya Pagi',
                              //   style: TextStyle(
                              //     fontSize: 16,
                              //     fontWeight: FontWeight.bold,
                              //     color: Colors.black,
                              //   ),
                              // ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tanggal Kejadian',
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 11,
                                          ),
                                        ),
                                        Text(
                                          controller.formatFullDate(controller
                                                  .dataKorlantas
                                                  .value
                                                  ?.waktuKejadian) ??
                                              '-',
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
                                          'Waktu Kejadian',
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 11,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '${controller.formatTimeOnly(controller.dataKorlantas.value?.waktuKejadian) ?? '-'} ${controller.dataKorlantas.value?.zonaWaktu ?? ''}',
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
                                'Apa Terjadi',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 11,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    controller
                                            .dataKorlantas.value?.apaTerjadi ??
                                        '-',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
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
                          '${controller.dataKorlantas.value?.uraianKejadian}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 4),
                        SizedBox(height: 14),
                        Text(
                          'Lokasi',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          '${controller.dataKorlantas.value?.lokasi}',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Tempat Kejadian Perkara',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          '${controller.dataKorlantas.value?.tkpDesa}, ${controller.dataKorlantas.value?.tkpKecamatan}, ${controller.dataKorlantas.value?.tkpKabupaten}, ${controller.dataKorlantas.value?.tkpProvinsi}',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
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
                                    target: controller.markers.isNotEmpty
                                        ? controller.markers.first.position
                                        : const LatLng(-6.200000, 106.816666),
                                    zoom: 15,
                                  ),
                                  markers: controller.markers,
                                  mapType: MapType.normal,
                                  onMapCreated: controller.onMapCreated,
                                  myLocationEnabled: false,
                                  myLocationButtonEnabled: false,
                                  zoomControlsEnabled: false,
                                  mapToolbarEnabled: false,
                                ),
                              ),
                            )),
                        SizedBox(height: 14),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nama Polda',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 11,
                                    ),
                                  ),
                                  Text(
                                    '${controller.dataKorlantas.value?.namaPolda}',
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'No. Telepon',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 11,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${controller.dataKorlantas.value?.telpPolda}',
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
                        SizedBox(height: 14),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Latitude',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 11,
                                    ),
                                  ),
                                  Text(
                                    '${controller.dataKorlantas.value?.latPolda}',
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Longitude',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 11,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${controller.dataKorlantas.value?.lonPolda}',
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
                        SizedBox(height: 14),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nama Polres',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 11,
                                    ),
                                  ),
                                  Text(
                                    '${controller.dataKorlantas.value?.namaPolres}',
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'No. Telepon',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 11,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${controller.dataKorlantas.value?.telpPolres}',
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
                        SizedBox(height: 14),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Latitude',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 11,
                                    ),
                                  ),
                                  Text(
                                    '${controller.dataKorlantas.value?.latPolres}',
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Longitude',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 11,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${controller.dataKorlantas.value?.lonPolres}',
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
                        SizedBox(height: 14),
                        Text(
                          'Total Kerugian',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          '500.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Kategori',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          controller.dataKorlantas.value?.kategoriGk ?? '-',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Nama',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          controller.dataKorlantas.value?.namaSubGk ?? '-',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Modus',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          controller.dataKorlantas.value?.empModusOperandi ??
                              '-',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Motif Kejahatan',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          controller.dataKorlantas.value?.empMotifKejahatan ??
                              '-',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Sasaran Kejahatan',
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          controller.dataKorlantas.value?.empSasaranKejahatan ??
                              '-',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
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
