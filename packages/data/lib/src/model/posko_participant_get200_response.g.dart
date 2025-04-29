// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posko_participant_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PoskoParticipantGet200Response extends PoskoParticipantGet200Response {
  @override
  final bool? success;
  @override
  final BuiltList<PesertaPosko?>? data;

  factory _$PoskoParticipantGet200Response(
          [void Function(PoskoParticipantGet200ResponseBuilder)? updates]) =>
      (new PoskoParticipantGet200ResponseBuilder()..update(updates))._build();

  _$PoskoParticipantGet200Response._({this.success, this.data}) : super._();

  @override
  PoskoParticipantGet200Response rebuild(
          void Function(PoskoParticipantGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PoskoParticipantGet200ResponseBuilder toBuilder() =>
      new PoskoParticipantGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PoskoParticipantGet200Response &&
        success == other.success &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PoskoParticipantGet200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class PoskoParticipantGet200ResponseBuilder
    implements
        Builder<PoskoParticipantGet200Response,
            PoskoParticipantGet200ResponseBuilder> {
  _$PoskoParticipantGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<PesertaPosko?>? _data;
  ListBuilder<PesertaPosko?> get data =>
      _$this._data ??= new ListBuilder<PesertaPosko?>();
  set data(ListBuilder<PesertaPosko?>? data) => _$this._data = data;

  PoskoParticipantGet200ResponseBuilder() {
    PoskoParticipantGet200Response._defaults(this);
  }

  PoskoParticipantGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PoskoParticipantGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PoskoParticipantGet200Response;
  }

  @override
  void update(void Function(PoskoParticipantGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PoskoParticipantGet200Response build() => _build();

  _$PoskoParticipantGet200Response _build() {
    _$PoskoParticipantGet200Response _$result;
    try {
      _$result = _$v ??
          new _$PoskoParticipantGet200Response._(
            success: success,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PoskoParticipantGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
