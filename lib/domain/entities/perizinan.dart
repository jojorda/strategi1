import 'package:strategi_hub_app/domain/entities/operator.dart';
import 'package:strategi_hub_app/domain/entities/sarana.dart';

import 'package:json_annotation/json_annotation.dart';

part 'perizinan.g.dart';

@JsonSerializable(explicitToJson: true)
class Perizinan {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'file_url')
  String? fileUrl;

  Perizinan({
    this.id,
    this.name,
    this.type,
    this.fileUrl,
  });

  factory Perizinan.fromJson(Map<String, dynamic> json) =>
      _$PerizinanFromJson(json);

  Map<String, dynamic> toJson() => _$PerizinanToJson(this);
}

class PerizinanPageArugment {
  Operator? operator;
  Sarana? sarana;

  PerizinanPageArugment({
    this.operator,
    this.sarana,
  });
}
