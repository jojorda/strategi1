import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/components/base_scaffold.dart';

import 'package:strategi_hub_app/components/google_maps_view.dart';
import 'package:strategi_hub_app/components/loader.dart';
import 'package:strategi_hub_app/modules/jalan/kecelakaan/controller/detail_kecelakaan_controller.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';
import 'package:strategi_hub_app/utils/extentions/number_extentions.dart';

class AccidentReportPage extends GetView<DetailIncidentController> {
  static const routeName = '/accident-report-detail';
  const AccidentReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Kecelakaan',
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () async {
              controller.fetchData();
            },
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: Obx(() {
                      if (controller.incidentReport.value == null &&
                          !controller.isLoading.value) {
                        return SizedBox(
                          height: Get.height,
                          child: Center(
                            child: Text('Data tidak ditemukan'),
                          ),
                        );
                      }
                      if (controller.isLoading.value) {
                        return SizedBox();
                      }
                      return Column(
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
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 1),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            controller.incidentReport.value
                                                    ?.name ??
                                                '',
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
                                                      controller.incidentReport
                                                              .value?.sector ??
                                                          '-',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                                          DateFormat(
                                                                  'EEEE, dd MMMM yyyy',
                                                                  'id_ID')
                                                              .tryFormat(controller
                                                                  .incidentReport
                                                                  .value
                                                                  ?.incidentTime),
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            child: Text(
                                              controller.incidentReport.value
                                                      ?.accidentType ??
                                                  '-',
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
                                          Wrap(
                                            children: controller.incidentReport
                                                    .value?.involvedVehicles
                                                    ?.map(
                                                      (e) => Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 8,
                                                                vertical: 4),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Colors.grey[200],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4),
                                                        ),
                                                        child: Text(
                                                          e,
                                                          style: TextStyle(
                                                            color: Colors
                                                                .grey[700],
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                    .toList() ??
                                                [],
                                          ),
                                        ],
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
                                        controller.incidentReport.value
                                                ?.incidentChronology ??
                                            '-',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: Colors.grey[100]!,
                                              width: 1),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                  'Korban Manusia',
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
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Meninggal Dunia',
                                                            style: TextStyle(
                                                                fontSize: 11),
                                                          ),
                                                          Text(
                                                            controller
                                                                    .incidentReport
                                                                    .value
                                                                    ?.fatalities
                                                                    ?.toPeopleCount() ??
                                                                '-',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Luka Berat',
                                                            style: TextStyle(
                                                                fontSize: 12),
                                                          ),
                                                          Text(
                                                            controller
                                                                    .incidentReport
                                                                    .value
                                                                    ?.seriousInjuries
                                                                    ?.toPeopleCount() ??
                                                                '-',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Luka Sedang',
                                                            style: TextStyle(
                                                                fontSize: 12),
                                                          ),
                                                          Text(
                                                            controller
                                                                    .incidentReport
                                                                    .value
                                                                    ?.moderateInjuries
                                                                    ?.toPeopleCount() ??
                                                                '-',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
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
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Luka Ringan',
                                                            style: TextStyle(
                                                                fontSize: 11),
                                                          ),
                                                          Text(
                                                            controller
                                                                    .incidentReport
                                                                    .value
                                                                    ?.minorInjuries
                                                                    ?.toPeopleCount() ??
                                                                '-',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Hilang',
                                                            style: TextStyle(
                                                                fontSize: 12),
                                                          ),
                                                          Text(
                                                            controller
                                                                    .incidentReport
                                                                    .value
                                                                    ?.missingPersons
                                                                    ?.toPeopleCount() ??
                                                                '-',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Selamat',
                                                            style: TextStyle(
                                                                fontSize: 12),
                                                          ),
                                                          Text(
                                                            controller
                                                                    .incidentReport
                                                                    .value
                                                                    ?.survivors
                                                                    ?.toPeopleCount() ??
                                                                '-',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
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
                                        controller.incidentReport.value
                                                ?.onSceneCommander ??
                                            '-',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 14),
                                      Text(
                                        'UPT Kemenhub Terkait',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        controller.incidentReport.value
                                                ?.workUnit ??
                                            '-',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 14),
                                      Text(
                                        'PIC PELAPOR',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        controller.incidentReport.value?.name ??
                                            '-',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 14),
                                      Text(
                                        'Kerusakan Fisik',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        controller.incidentReport.value
                                                ?.physicalDamage ??
                                            '-',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 14),
                                      Text(
                                        'Dampak Lingkungan',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        controller.incidentReport.value
                                                ?.environmentalImpact ??
                                            '-',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 14),
                                      Text(
                                        'Dampak Lalu Lintas',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        controller.incidentReport.value
                                                ?.trafficImpact ??
                                            '-',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 14),
                                      Text(
                                        'Status Penanggulangan',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        controller.incidentReport.value
                                                ?.mitigationStatus ??
                                            '-',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 14),
                                      Text(
                                        'Lokasi',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        controller.incidentReport.value
                                                ?.location ??
                                            '-',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 14),
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Container(
                                            height: 200,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey[300]!),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: GoogleMapsView(
                                                markers: [
                                                  MarkerItem(
                                                    latitude: controller
                                                        .incidentReport
                                                        .value
                                                        ?.latitude,
                                                    longitude: controller
                                                        .incidentReport
                                                        .value
                                                        ?.longitude,
                                                    markerId:
                                                        'accident_location',
                                                    title: 'Lokasi Kecelakaan',
                                                  )
                                                ],
                                              ),
                                            ),
                                          )),
                                      SizedBox(height: 14),
                                      Text(
                                        'Koordinat',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        '${controller.incidentReport.value?.longitude.toString() ?? '-'} , ${controller.incidentReport.value?.latitude.toString() ?? '-'}',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 14),
                                      Text(
                                        'Laporan Final',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 12),
                                        decoration: BoxDecoration(
                                          color: Colors.blue[50],
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                      );
                    }),
                  ),
                );
              },
            ),
          ),
          Obx(() {
            return Positioned.fill(
              child: Visibility(
                visible: controller.isLoading.value,
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  onTap: () {},
                  child: Container(
                    color: Colors.white.withAlpha(70),
                    child: BouncingLoader(),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
