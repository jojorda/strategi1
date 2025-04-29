// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Coordinates extends Coordinates {
  @override
  final double? x;
  @override
  final double? y;

  factory _$Coordinates([void Function(CoordinatesBuilder)? updates]) =>
      (new CoordinatesBuilder()..update(updates))._build();

  _$Coordinates._({this.x, this.y}) : super._();

  @override
  Coordinates rebuild(void Function(CoordinatesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoordinatesBuilder toBuilder() => new CoordinatesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Coordinates && x == other.x && y == other.y;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, x.hashCode);
    _$hash = $jc(_$hash, y.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Coordinates')
          ..add('x', x)
          ..add('y', y))
        .toString();
  }
}

class CoordinatesBuilder implements Builder<Coordinates, CoordinatesBuilder> {
  _$Coordinates? _$v;

  double? _x;
  double? get x => _$this._x;
  set x(double? x) => _$this._x = x;

  double? _y;
  double? get y => _$this._y;
  set y(double? y) => _$this._y = y;

  CoordinatesBuilder() {
    Coordinates._defaults(this);
  }

  CoordinatesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _x = $v.x;
      _y = $v.y;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Coordinates other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Coordinates;
  }

  @override
  void update(void Function(CoordinatesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Coordinates build() => _build();

  _$Coordinates _build() {
    final _$result = _$v ??
        new _$Coordinates._(
          x: x,
          y: y,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
