import 'package:json_annotation/json_annotation.dart';

part 'coordinates.g.dart';

@JsonSerializable(explicitToJson: true)
class Coordinates {
  double? x;
  double? y;

  Coordinates({
    this.x,
    this.y,
  });

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinatesToJson(this);
}
