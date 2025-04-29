import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: "username")
  String? username;
  @JsonKey(name: "fullname")
  String? fullname;
  @JsonKey(name: "userId")
  String? userId;
  @JsonKey(name: "roleId")
  String? roleId;
  @JsonKey(name: "roles")
  List<String>? roles;
  @JsonKey(name: "accessToken")
  String? accessToken;
  @JsonKey(name: "refreshToken")
  String? refreshToken;
  @JsonKey(name: "tokenType")
  String? tokenType;
  @JsonKey(name: "expiresIn")
  int? expiresIn;

  LoginResponse({
    this.username,
    this.fullname,
    this.userId,
    this.roleId,
    this.roles,
    this.accessToken,
    this.refreshToken,
    this.tokenType,
    this.expiresIn,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
