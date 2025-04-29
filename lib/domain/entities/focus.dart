import 'package:json_annotation/json_annotation.dart';
import 'package:strategi_hub_app/domain/entities/cctv_data.dart';

part 'focus.g.dart';

@JsonSerializable(explicitToJson: true)
class FocusData {
  int? id;
  String? idUser;
  String? judul;
  List<SimpulTransportasi>? simpulTransportasi;
  List<CctvData>? cctv;
  List<VideoFocus>? video30s;
  List<VideoFocus>? videoLiveStreaming;
  String? createDate;
  String? updateDate;

  FocusData({
    required this.id,
    required this.idUser,
    required this.judul,
    this.simpulTransportasi,
    this.cctv,
    this.video30s,
    this.videoLiveStreaming,
    required this.createDate,
    required this.updateDate,
  });

  factory FocusData.fromJson(Map<String, dynamic> json) =>
      _$FocusDataFromJson(json);
  Map<String, dynamic> toJson() => _$FocusDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SimpulTransportasi {
  String? idLocation;
  String? location;
  String? moda;
  SimpulChartData? seasonal;
  SimpulChartData? weekly;
  SimpulChartData? monthly;
  SimpulChartData? yearly;

  SimpulTransportasi({
    this.idLocation,
    this.location,
    this.moda,
    this.seasonal,
    this.weekly,
    this.monthly,
    this.yearly,
  });

  factory SimpulTransportasi.fromJson(Map<String, dynamic> json) =>
      _$SimpulTransportasiFromJson(json);
  Map<String, dynamic> toJson() => _$SimpulTransportasiToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SimpulChartData {
  String? location;
  String? moda;
  List<ChartFocusData>? departure;
  List<ChartFocusData>? arrival;
  List<ChartFocusData>? vehicleDeparture;
  List<ChartFocusData>? vehicleArrival;

  SimpulChartData({
    this.location,
    this.moda,
    this.departure,
    this.arrival,
    this.vehicleDeparture,
    this.vehicleArrival,
  });

  factory SimpulChartData.fromJson(Map<String, dynamic> json) =>
      _$SimpulChartDataFromJson(json);
  Map<String, dynamic> toJson() => _$SimpulChartDataToJson(this);
}

@JsonSerializable()
class ChartFocusData {
  final String label;
  final double value;

  ChartFocusData({required this.label, required this.value});

  factory ChartFocusData.fromJson(Map<String, dynamic> json) =>
      _$ChartFocusDataFromJson(json);
  Map<String, dynamic> toJson() => _$ChartFocusDataToJson(this);
}

@JsonSerializable()
class VideoFocus {
  String? judul;

  String? link;

  VideoFocus({
    required this.judul,
    required this.link,
  });

  factory VideoFocus.fromJson(Map<String, dynamic> json) =>
      _$VideoFocusFromJson(json);
  Map<String, dynamic> toJson() => _$VideoFocusToJson(this);
}

@JsonSerializable()
class SimpulInputData {
  String? idLocation;
  String? location;
  String? moda;

  SimpulInputData({
    this.idLocation,
    this.location,
    this.moda,
  });

  factory SimpulInputData.fromJson(Map<String, dynamic> json) =>
      _$SimpulInputDataFromJson(json);
  Map<String, dynamic> toJson() => _$SimpulInputDataToJson(this);
}
