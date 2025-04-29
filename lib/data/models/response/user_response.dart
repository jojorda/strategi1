import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  @JsonKey(name: "username")
  String? username;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "fullname")
  String? fullname;
  @JsonKey(name: "user_id")
  String? userId;
  @JsonKey(name: "role_id")
  String? roleId;
  @JsonKey(name: "role")
  String? role;
  @JsonKey(name: "roles")
  List<String>? roles;
  @JsonKey(name: "access")
  List<String>? access;
  @JsonKey(name: "alias")
  String? alias;
  @JsonKey(name: "kantor")
  String? kantor;
  @JsonKey(name: "photoUrl")
  String? photoUrl;

  UserResponse({
    this.username,
    this.email,
    this.fullname,
    this.userId,
    this.roleId,
    this.roles,
    this.role,
    this.alias,
    this.kantor,
    this.photoUrl,
    this.access,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
