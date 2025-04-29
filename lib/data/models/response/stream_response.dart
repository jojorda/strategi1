import 'package:json_annotation/json_annotation.dart';

part 'stream_response.g.dart';

@JsonSerializable()
class LiveStreamResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "data")
  List<Datum>? data;

  LiveStreamResponse({
    this.status,
    this.data,
  });

  factory LiveStreamResponse.fromJson(Map<String, dynamic> json) =>
      _$LiveStreamResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LiveStreamResponseToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "idUser")
  int? idUser;
  @JsonKey(name: "lokasiStreaming")
  String? lokasiStreaming;
  @JsonKey(name: "longitude")
  int? longitude;
  @JsonKey(name: "latitude")
  int? latitude;
  @JsonKey(name: "jadwalStreaming")
  DateTime? jadwalStreaming;
  @JsonKey(name: "judul")
  String? judul;
  @JsonKey(name: "kategori")
  String? kategori;
  @JsonKey(name: "deskripsi")
  String? deskripsi;
  @JsonKey(name: "urlYoutubeStreaming")
  String? urlYoutubeStreaming;
  @JsonKey(name: "status")
  String? status;
  @JsonKey(name: "idVerifier")
  int? idVerifier;
  @JsonKey(name: "reasonReject")
  String? reasonReject;
  @JsonKey(name: "createDate")
  DateTime? createDate;
  @JsonKey(name: "updateDate")
  DateTime? updateDate;
  @JsonKey(name: "createId")
  int? createId;
  @JsonKey(name: "updateId")
  int? updateId;
  @JsonKey(name: "videoId")
  String? videoId;
  @JsonKey(name: "urlThumbnail")
  String? urlThumbnail;
  @JsonKey(name: "publishedAt")
  DateTime? publishedAt;
  @JsonKey(name: "idAkun")
  int? idAkun;
  @JsonKey(name: "isActive")
  bool? isActive;
  @JsonKey(name: "statusLive")
  String? statusLive;
  @JsonKey(name: "tipeMedia")
  String? tipeMedia;
  @JsonKey(name: "tipeLokasi")
  String? tipeLokasi;

  Datum({
    this.id,
    this.idUser,
    this.lokasiStreaming,
    this.longitude,
    this.latitude,
    this.jadwalStreaming,
    this.judul,
    this.kategori,
    this.deskripsi,
    this.urlYoutubeStreaming,
    this.status,
    this.idVerifier,
    this.reasonReject,
    this.createDate,
    this.updateDate,
    this.createId,
    this.updateId,
    this.videoId,
    this.urlThumbnail,
    this.publishedAt,
    this.idAkun,
    this.isActive,
    this.statusLive,
    this.tipeMedia,
    this.tipeLokasi,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
