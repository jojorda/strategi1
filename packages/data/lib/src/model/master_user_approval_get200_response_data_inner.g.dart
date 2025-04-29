// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_user_approval_get200_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MasterUserApprovalGet200ResponseDataInner
    extends MasterUserApprovalGet200ResponseDataInner {
  @override
  final String? id;
  @override
  final String? username;
  @override
  final String? fullname;
  @override
  final String? kantor;
  @override
  final String? role;

  factory _$MasterUserApprovalGet200ResponseDataInner(
          [void Function(MasterUserApprovalGet200ResponseDataInnerBuilder)?
              updates]) =>
      (new MasterUserApprovalGet200ResponseDataInnerBuilder()..update(updates))
          ._build();

  _$MasterUserApprovalGet200ResponseDataInner._(
      {this.id, this.username, this.fullname, this.kantor, this.role})
      : super._();

  @override
  MasterUserApprovalGet200ResponseDataInner rebuild(
          void Function(MasterUserApprovalGet200ResponseDataInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MasterUserApprovalGet200ResponseDataInnerBuilder toBuilder() =>
      new MasterUserApprovalGet200ResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MasterUserApprovalGet200ResponseDataInner &&
        id == other.id &&
        username == other.username &&
        fullname == other.fullname &&
        kantor == other.kantor &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, fullname.hashCode);
    _$hash = $jc(_$hash, kantor.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'MasterUserApprovalGet200ResponseDataInner')
          ..add('id', id)
          ..add('username', username)
          ..add('fullname', fullname)
          ..add('kantor', kantor)
          ..add('role', role))
        .toString();
  }
}

class MasterUserApprovalGet200ResponseDataInnerBuilder
    implements
        Builder<MasterUserApprovalGet200ResponseDataInner,
            MasterUserApprovalGet200ResponseDataInnerBuilder> {
  _$MasterUserApprovalGet200ResponseDataInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _fullname;
  String? get fullname => _$this._fullname;
  set fullname(String? fullname) => _$this._fullname = fullname;

  String? _kantor;
  String? get kantor => _$this._kantor;
  set kantor(String? kantor) => _$this._kantor = kantor;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  MasterUserApprovalGet200ResponseDataInnerBuilder() {
    MasterUserApprovalGet200ResponseDataInner._defaults(this);
  }

  MasterUserApprovalGet200ResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _username = $v.username;
      _fullname = $v.fullname;
      _kantor = $v.kantor;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MasterUserApprovalGet200ResponseDataInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MasterUserApprovalGet200ResponseDataInner;
  }

  @override
  void update(
      void Function(MasterUserApprovalGet200ResponseDataInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MasterUserApprovalGet200ResponseDataInner build() => _build();

  _$MasterUserApprovalGet200ResponseDataInner _build() {
    final _$result = _$v ??
        new _$MasterUserApprovalGet200ResponseDataInner._(
          id: id,
          username: username,
          fullname: fullname,
          kantor: kantor,
          role: role,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
