import 'package:json_annotation/json_annotation.dart';

part 'moda_operator_request.g.dart';

@JsonSerializable()
class ModaOperatorRequest {
  @JsonKey(name: "dateStart", includeIfNull: false)
  DateTime? dateStart;
  @JsonKey(name: "dateEnd", includeIfNull: false)
  DateTime? dateEnd;
  @JsonKey(name: "period", includeIfNull: false)
  String? period;
  @JsonKey(name: "event", includeIfNull: false)
  String? event;
  @JsonKey(name: "search", includeIfNull: false)
  String? search;
  @JsonKey(name: "sortColumn", includeIfNull: false)
  String? sortColumn;
  @JsonKey(name: "sortDirection", includeIfNull: false)
  String? sortDirection;

  ModaOperatorRequest({
    this.dateStart,
    this.dateEnd,
    this.period,
    this.event,
    this.search,
    this.sortColumn,
    this.sortDirection,
  });

  factory ModaOperatorRequest.fromJson(Map<String, dynamic> json) =>
      _$ModaOperatorRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ModaOperatorRequestToJson(this);
}
