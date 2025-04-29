// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posko_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PoskoResponse extends PoskoResponse {
  @override
  final bool? success;
  @override
  final Posko? data;
  @override
  final BuiltList<Event>? eventList;

  factory _$PoskoResponse([void Function(PoskoResponseBuilder)? updates]) =>
      (new PoskoResponseBuilder()..update(updates))._build();

  _$PoskoResponse._({this.success, this.data, this.eventList}) : super._();

  @override
  PoskoResponse rebuild(void Function(PoskoResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PoskoResponseBuilder toBuilder() => new PoskoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PoskoResponse &&
        success == other.success &&
        data == other.data &&
        eventList == other.eventList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, eventList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PoskoResponse')
          ..add('success', success)
          ..add('data', data)
          ..add('eventList', eventList))
        .toString();
  }
}

class PoskoResponseBuilder
    implements Builder<PoskoResponse, PoskoResponseBuilder> {
  _$PoskoResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PoskoBuilder? _data;
  PoskoBuilder get data => _$this._data ??= new PoskoBuilder();
  set data(PoskoBuilder? data) => _$this._data = data;

  ListBuilder<Event>? _eventList;
  ListBuilder<Event> get eventList =>
      _$this._eventList ??= new ListBuilder<Event>();
  set eventList(ListBuilder<Event>? eventList) => _$this._eventList = eventList;

  PoskoResponseBuilder() {
    PoskoResponse._defaults(this);
  }

  PoskoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _eventList = $v.eventList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PoskoResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PoskoResponse;
  }

  @override
  void update(void Function(PoskoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PoskoResponse build() => _build();

  _$PoskoResponse _build() {
    _$PoskoResponse _$result;
    try {
      _$result = _$v ??
          new _$PoskoResponse._(
            success: success,
            data: _data?.build(),
            eventList: _eventList?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'eventList';
        _eventList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PoskoResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
