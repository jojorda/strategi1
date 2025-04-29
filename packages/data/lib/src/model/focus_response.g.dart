// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'focus_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FocusResponse extends FocusResponse {
  @override
  final bool? success;
  @override
  final Focus? data;

  factory _$FocusResponse([void Function(FocusResponseBuilder)? updates]) =>
      (new FocusResponseBuilder()..update(updates))._build();

  _$FocusResponse._({this.success, this.data}) : super._();

  @override
  FocusResponse rebuild(void Function(FocusResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FocusResponseBuilder toBuilder() => new FocusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FocusResponse &&
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
    return (newBuiltValueToStringHelper(r'FocusResponse')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class FocusResponseBuilder
    implements Builder<FocusResponse, FocusResponseBuilder> {
  _$FocusResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  FocusBuilder? _data;
  FocusBuilder get data => _$this._data ??= new FocusBuilder();
  set data(FocusBuilder? data) => _$this._data = data;

  FocusResponseBuilder() {
    FocusResponse._defaults(this);
  }

  FocusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FocusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FocusResponse;
  }

  @override
  void update(void Function(FocusResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FocusResponse build() => _build();

  _$FocusResponse _build() {
    _$FocusResponse _$result;
    try {
      _$result = _$v ??
          new _$FocusResponse._(
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
            r'FocusResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
