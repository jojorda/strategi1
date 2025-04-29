import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
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
  @JsonKey(name: "alias")
  String? alias;
  @JsonKey(name: "kantor")
  String? kantor;
  @JsonKey(name: "photoUrl")
  String? photoUrl;
  User({
    this.email,
    this.username,
    this.fullname,
    this.userId,
    this.roleId,
    this.roles,
    this.alias,
    this.kantor,
    this.role,
    this.photoUrl,
  });
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
