// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_seasonal_get200_response_data_flight_aircraft.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummarySeasonalGet200ResponseDataFlightAircraft
    extends SummarySeasonalGet200ResponseDataFlightAircraft {
  @override
  final int? domestic;
  @override
  final int? outbound;
  @override
  final int? inbound;

  factory _$SummarySeasonalGet200ResponseDataFlightAircraft(
          [void Function(
                  SummarySeasonalGet200ResponseDataFlightAircraftBuilder)?
              updates]) =>
      (new SummarySeasonalGet200ResponseDataFlightAircraftBuilder()
            ..update(updates))
          ._build();

  _$SummarySeasonalGet200ResponseDataFlightAircraft._(
      {this.domestic, this.outbound, this.inbound})
      : super._();

  @override
  SummarySeasonalGet200ResponseDataFlightAircraft rebuild(
          void Function(SummarySeasonalGet200ResponseDataFlightAircraftBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummarySeasonalGet200ResponseDataFlightAircraftBuilder toBuilder() =>
      new SummarySeasonalGet200ResponseDataFlightAircraftBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummarySeasonalGet200ResponseDataFlightAircraft &&
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
            r'SummarySeasonalGet200ResponseDataFlightAircraft')
          ..add('domestic', domestic)
          ..add('outbound', outbound)
          ..add('inbound', inbound))
        .toString();
  }
}

class SummarySeasonalGet200ResponseDataFlightAircraftBuilder
    implements
        Builder<SummarySeasonalGet200ResponseDataFlightAircraft,
            SummarySeasonalGet200ResponseDataFlightAircraftBuilder> {
  _$SummarySeasonalGet200ResponseDataFlightAircraft? _$v;

  int? _domestic;
  int? get domestic => _$this._domestic;
  set domestic(int? domestic) => _$this._domestic = domestic;

  int? _outbound;
  int? get outbound => _$this._outbound;
  set outbound(int? outbound) => _$this._outbound = outbound;

  int? _inbound;
  int? get inbound => _$this._inbound;
  set inbound(int? inbound) => _$this._inbound = inbound;

  SummarySeasonalGet200ResponseDataFlightAircraftBuilder() {
    SummarySeasonalGet200ResponseDataFlightAircraft._defaults(this);
  }

  SummarySeasonalGet200ResponseDataFlightAircraftBuilder get _$this {
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
  void replace(SummarySeasonalGet200ResponseDataFlightAircraft other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummarySeasonalGet200ResponseDataFlightAircraft;
  }

  @override
  void update(
      void Function(SummarySeasonalGet200ResponseDataFlightAircraftBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SummarySeasonalGet200ResponseDataFlightAircraft build() => _build();

  _$SummarySeasonalGet200ResponseDataFlightAircraft _build() {
    final _$result = _$v ??
        new _$SummarySeasonalGet200ResponseDataFlightAircraft._(
          domestic: domestic,
          outbound: outbound,
          inbound: inbound,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
