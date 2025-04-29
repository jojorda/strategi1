import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/domain/entities/cctv_data.dart';
import 'package:strategi_hub_app/domain/entities/focus.dart';
import 'package:strategi_hub_app/domain/mappers/focus.auto_mappr.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

@AutoMappr([
  MapType<Focus, FocusData>(fields: [
    Field('simpulTransportasi', custom: FocusMapper.mapSimpul),
    Field('cctv', custom: FocusMapper.mapCctv),
    Field('video30s', custom: FocusMapper.mapVideo30s),
    Field('videoLiveStreaming', custom: FocusMapper.mapVideoStream),
  ]),
])
class FocusMapper extends $FocusMapper {
  static List<SimpulTransportasi>? mapSimpul(Focus? source) {
    if (source == null) return null;

    return source.simpulTransportasi?.map((model) {
      return SimpulTransportasi(
          idLocation: model.idLocation,
          location: model.location,
          moda: model.moda,
          monthly: _mapSimpulData(model.monthly?.asMap()),
          weekly: _mapSimpulData(model.weekly?.asMap()),
          yearly: _mapSimpulData(model.yearly?.asMap()),
          seasonal: _mapSimpulData(model.seasonal?.asMap()));
    }).toList();
  }

  static SimpulChartData? _mapSimpulData(
      Map<String, TransportationMetrics>? source) {
    if (source == null) return null;

    return SimpulChartData(
      departure: source.entries
          .map((entry) => ChartFocusData(
                label: entry.key,
                value: entry.value.departure?.toDouble() ?? 0.0,
              ))
          .toList(),
      arrival: source.entries
          .map((entry) => ChartFocusData(
                label: entry.key,
                value: entry.value.arrival?.toDouble() ?? 0.0,
              ))
          .toList(),
      vehicleDeparture: source.entries
          .map((entry) => ChartFocusData(
                label: entry.key,
                value: entry.value.vehicleDeparture?.toDouble() ?? 0.0,
              ))
          .toList(),
      vehicleArrival: source.entries
          .map((entry) => ChartFocusData(
                label: entry.key,
                value: entry.value.vehicleArrival?.toDouble() ?? 0.0,
              ))
          .toList(),
    );
  }

  static List<CctvData>? mapCctv(Focus? source) {
    if (source == null) return null;

    return source.cctv
        ?.map((model) => CctvData(
              id: model.id,
              locationName: model.namaLokasi,
              cctvName: model.namaCctv,
              streamUrl: model.streamUrl,
              status: model.status?.name,
              managerName: model.namaPengelola,
              protocol: model.protocol,
              latitude: model.latitude,
              longitude: model.longitude,
              source: model.source_,
              categoryTag: model.tagKategori,
              matra: model.matra,
              cityName: model.namaKabupatenKota,
              provinceName: model.namaProvinsi,
            ))
        .toList();
  }

  static List<VideoFocus>? mapVideo30s(Focus? source) {
    if (source == null) return null;

    return source.video30s
        ?.map((model) => VideoFocus(
              judul: model.judul,
              link: model.link,
            ))
        .toList();
  }

  static List<VideoFocus>? mapVideoStream(Focus? source) {
    if (source == null) return null;

    return source.videoLiveStreaming
        ?.map((model) => VideoFocus(
              judul: model.judul,
              link: model.link,
            ))
        .toList();
  }
}
