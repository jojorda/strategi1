// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_routine_get200_response_data_flight_passengers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummaryRoutineGet200ResponseDataFlightPassengers
    extends SummaryRoutineGet200ResponseDataFlightPassengers {
  @override
  final num? domestic;
  @override
  final num? outbound;
  @override
  final num? inbound;

  factory _$SummaryRoutineGet200ResponseDataFlightPassengers(
          [void Function(
                  SummaryRoutineGet200ResponseDataFlightPassengersBuilder)?
              updates]) =>
      (new SummaryRoutineGet200ResponseDataFlightPassengersBuilder()
            ..update(updates))
          ._build();

  _$SummaryRoutineGet200ResponseDataFlightPassengers._(
      {this.domestic, this.outbound, this.inbound})
      : super._();

  @override
  SummaryRoutineGet200ResponseDataFlightPassengers rebuild(
          void Function(SummaryRoutineGet200ResponseDataFlightPassengersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummaryRoutineGet200ResponseDataFlightPassengersBuilder toBuilder() =>
      new SummaryRoutineGet200ResponseDataFlightPassengersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummaryRoutineGet200ResponseDataFlightPassengers &&
        domestic == other.domestic &&
        outbound == other.outbound &&
        inbound == other.inbound;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, domestic.hashCode);
    _$hash = $jc(_$hash, outbound.hashCode);
    _$hash = $jc(_$hash, inbound.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SummaryRoutineGet200ResponseDataFlightPassengers')
          ..add('domestic', domestic)
          ..add('outbound', outbound)
          ..add('inbound', inbound))
        .toString();
  }
}

class SummaryRoutineGet200ResponseDataFlightPassengersBuilder
    implements
        Builder<SummaryRoutineGet200ResponseDataFlightPassengers,
            SummaryRoutineGet200ResponseDataFlightPassengersBuilder> {
  _$SummaryRoutineGet200ResponseDataFlightPassengers? _$v;

  num? _domestic;
  num? get domestic => _$this._domestic;
  set domestic(num? domestic) => _$this._domestic = domestic;

  num? _outbound;
  num? get outbound => _$this._outbound;
  set outbound(num? outbound) => _$this._outbound = outbound;

  num? _inbound;
  num? get inbound => _$this._inbound;
  set inbound(num? inbound) => _$this._inbound = inbound;

  SummaryRoutineGet200ResponseDataFlightPassengersBuilder() {
    SummaryRoutineGet200ResponseDataFlightPassengers._defaults(this);
  }

  SummaryRoutineGet200ResponseDataFlightPassengersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domestic = $v.domestic;
      _outbound = $v.outbound;
      _inbound = $v.inbound;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummaryRoutineGet200ResponseDataFlightPassengers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummaryRoutineGet200ResponseDataFlightPassengers;
  }

  @override
  void update(
      void Function(SummaryRoutineGet200ResponseDataFlightPassengersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SummaryRoutineGet200ResponseDataFlightPassengers build() => _build();

  _$SummaryRoutineGet200ResponseDataFlightPassengers _build() {
    final _$result = _$v ??
        new _$SummaryRoutineGet200ResponseDataFlightPassengers._(
          domestic: domestic,
          outbound: outbound,
          inbound: inbound,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
