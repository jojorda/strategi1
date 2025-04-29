// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'focus_video.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FocusVideo extends FocusVideo {
  @override
  final String? judul;
  @override
  final String? link;

  factory _$FocusVideo([void Function(FocusVideoBuilder)? updates]) =>
      (new FocusVideoBuilder()..update(updates))._build();

  _$FocusVideo._({this.judul, this.link}) : super._();

  @override
  FocusVideo rebuild(void Function(FocusVideoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FocusVideoBuilder toBuilder() => new FocusVideoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FocusVideo && judul == other.judul && link == other.link;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, judul.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FocusVideo')
          ..add('judul', judul)
          ..add('link', link))
        .toString();
  }
}

class FocusVideoBuilder implements Builder<FocusVideo, FocusVideoBuilder> {
  _$FocusVideo? _$v;

  String? _judul;
  String? get judul => _$this._judul;
  set judul(String? judul) => _$this._judul = judul;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  FocusVideoBuilder() {
    FocusVideo._defaults(this);
  }

  FocusVideoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _judul = $v.judul;
      _link = $v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FocusVideo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FocusVideo;
  }

  @override
  void update(void Function(FocusVideoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FocusVideo build() => _build();

  _$FocusVideo _build() {
    final _$result = _$v ??
        new _$FocusVideo._(
          judul: judul,
          link: link,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
