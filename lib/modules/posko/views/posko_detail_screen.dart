import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';
import 'package:strategi_hub_app/components/Posko/Edit_Posko.dart';
import 'package:strategi_hub_app/components/google_maps_view.dart';
import 'package:strategi_hub_app/domain/entities/posko.dart';
import 'package:strategi_hub_app/modules/posko/controllers/posko_detail_controller.dart';

class PoskoDetailScreen extends GetView<PoskoDetailController> {
  static const routeName = '/register-detail';

  const PoskoDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        Rx<Posko?> posko = controller.posko;

        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return BaseScaffold(
          title: 'POSKO',
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      posko.value?.namaPosko ?? '',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Center(
                    child: Text(
                      '${posko.value?.event?.nama} | ${posko.value?.jenisPosko?.nama}',
                      style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Nama Posko',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    posko.value?.namaPosko ?? '',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: _buildDetailItem(
                            'Masa Pantau', posko.value?.masaPantauStr ?? ''),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildDetailItem(
                            'Titik Pantau', posko.value?.titikPantau ?? ''),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Fokus Pantau',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: _buildCheckboxList(
                          controller.modifyFocusItems(
                            posko.value?.fokusPantau ?? [],
                            controller.leftFocusItems,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildCheckboxList(
                          controller.modifyFocusItems(
                            posko.value?.fokusPantau ?? [],
                            controller.rightFocusItems,
                          ),
                        ),
                      ),
                    ],
                  ),
                  _buildDetailItem(
                      'Alamat Posko', posko.value?.alamatPosko ?? ''),
                  _buildDetailItem('Unit Kerja Koordinator',
                      posko.value?.unitKerjaKoordinator ?? ''),
                  const SizedBox(height: 3),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ketua Posko',
                                  style: TextStyle(fontSize: 11),
                                ),
                                Text(
                                  posko.value?.ketuaPosko ?? '',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'No Telp Ketua Posko',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  posko.value?.noTelpKetuaPosko ?? '',
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
                  const SizedBox(height: 5),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PIC Posko',
                                  style: TextStyle(fontSize: 11),
                                ),
                                Text(
                                  posko.value?.picPosko ?? '',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'No Telp Posko',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  posko.value?.noTelpPosko ?? '',
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
                  const SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Colors.blue[600]!),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                        child: Text(
                          'Lihat Dokumen Laporan',
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
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
                          child: Obx(() {
                            final x = posko.value?.koordinatPosko?.x;
                            final y = posko.value?.koordinatPosko?.y;
                            return (x != null && y != null)
                                ? GoogleMapsView(
                                    markers: [
                                      MarkerItem(
                                        latitude: x,
                                        longitude: y,
                                        title: posko.value?.namaPosko ?? '',
                                        markerId: 'posko_location',
                                      )
                                    ],
                                  )
                                : Container();
                          }),
                        ),
                      )),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 243, 18, 18),
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
                          onPressed: () {
                            // Create PoskoData object with current values
                            final poskoData = PoskoData(
                              jenisPosko: 'Posko Lapangan', // Example value
                              event: 'Angkutan Lebaran 2025',
                              namaPosko: 'Posko KSOP Utama Tanjung Perak',
                              alamatPosko:
                                  'Jl. Kalimas Baru No.194, Perak Utara, Kec. Pabean Cantikan, Surabaya, Jawa Timur 60165, Indonesia',
                              unitKerjaKoordinator: 'KSOP Utama Tanjung Perak',
                              pesertaPosko: 'UPT Kementerian Perhubungan',
                              koordinatorPosko: '', // Fill with actual value
                              ketuaPosko: 'Ahmad Januar',
                              noTelpKetuaPosko: '08134256787',
                              picPosko: 'Sinta Rahma',
                              noTelpPosko: '081532729171',
                              masaPantau: '27 Mar 2025 - 30 Mar 2025',
                              titikPantau: 'Tanjung Perak',
                              fokusPantau: [
                                'Mobilitas Penumpang',
                                'Mobilitas Barang',
                                'Mobilitas Sarana Angkutan',
                                'Kelancaran Transportasi pada Jaringan',
                                'Kecelakaan Transportasi',
                                'Kejadian Menonjol',
                                'Cuaca dan Peringatan',
                                'Bencana',
                                'Ramp Check',
                              ],
                            );

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    EditPoskoPage(poskoData: poskoData),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text('Edit'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDetailItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildContactInfo(String title, String name) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 4),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           title,
  //           style: TextStyle(
  //             fontSize: 10,
  //             fontWeight: FontWeight.w500,
  //             color: Colors.grey[600],
  //           ),
  //         ),
  //         // const SizedBox(height: 2),
  //         Text(
  //           '$name',
  //           style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,
  //                   color: Colors.black,),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildCheckboxList(Map<String, bool> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.entries.map((entry) {
        return Row(
          children: [
            Transform.scale(
              scale: 0.9,
              child: Checkbox(
                value: entry.value,
                onChanged: (_) {},
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity.compact,
                side: BorderSide(
                  color: Colors.grey[400]!,
                  width: 1.5,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                activeColor: const Color.fromARGB(255, 108, 110, 133),
              ),
            ),
            Expanded(
              child: Text(
                entry.key,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
