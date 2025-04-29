// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_operators_moda_routine_get200_response_inner_documents_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner
    extends ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? fileUrl;

  factory _$ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner(
          [void Function(
                  ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder)?
              updates]) =>
      (new ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder()
            ..update(updates))
          ._build();

  _$ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner._(
      {this.id, this.name, this.type, this.fileUrl})
      : super._();

  @override
  ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner rebuild(
          void Function(
                  ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder
      toBuilder() =>
          new ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        fileUrl == other.fileUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, fileUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('fileUrl', fileUrl))
        .toString();
  }
}

class ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder
    implements
        Builder<ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner,
            ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder> {
  _$ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _fileUrl;
  String? get fileUrl => _$this._fileUrl;
  set fileUrl(String? fileUrl) => _$this._fileUrl = fileUrl;

  ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder() {
    ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner._defaults(this);
  }

  ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _fileUrl = $v.fileUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner;
  }

  @override
  void update(
      void Function(
              ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner build() => _build();

  _$ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner _build() {
    final _$result = _$v ??
        new _$ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner._(
          id: id,
          name: name,
          type: type,
          fileUrl: fileUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
