import 'package:json_annotation/json_annotation.dart';

part 'moda_operator_base_request.g.dart';

@JsonSerializable()
class ModaOperatorBaseRequest {
  @JsonKey(name: "page", includeIfNull: false)
  int? page;
  @JsonKey(name: "limit", includeIfNull: false)
  int? limit;
  @JsonKey(name: "search", includeIfNull: false)
  String? search;

  ModaOperatorBaseRequest({
    this.page,
    this.limit,
    this.search,
  });

  factory ModaOperatorBaseRequest.fromJson(Map<String, dynamic> json) =>
      _$ModaOperatorBaseRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ModaOperatorBaseRequestToJson(this);
}