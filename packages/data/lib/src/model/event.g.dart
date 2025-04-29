// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Event extends Event {
  @override
  final int? id;
  @override
  final String? nama;
  @override
  final String? tipe;
  @override
  final Date? tanggalMulai;
  @override
  final Date? tanggalSelesai;
  @override
  final String? prevEvent;
  @override
  final Date? h1;
  @override
  final String? subNama;
  @override
  final String? noteNarasi;
  @override
  final String? splitPeriode;
  @override
  final int? flag;

  factory _$Event([void Function(EventBuilder)? updates]) =>
      (new EventBuilder()..update(updates))._build();

  _$Event._(
      {this.id,
      this.nama,
      this.tipe,
      this.tanggalMulai,
      this.tanggalSelesai,
      this.prevEvent,
      this.h1,
      this.subNama,
      this.noteNarasi,
      this.splitPeriode,
      this.flag})
      : super._();

  @override
  Event rebuild(void Function(EventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventBuilder toBuilder() => new EventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Event &&
        id == other.id &&
        nama == other.nama &&
        tipe == other.tipe &&
        tanggalMulai == other.tanggalMulai &&
        tanggalSelesai == other.tanggalSelesai &&
        prevEvent == other.prevEvent &&
        h1 == other.h1 &&
        subNama == other.subNama &&
        noteNarasi == other.noteNarasi &&
        splitPeriode == other.splitPeriode &&
        flag == other.flag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, nama.hashCode);
    _$hash = $jc(_$hash, tipe.hashCode);
    _$hash = $jc(_$hash, tanggalMulai.hashCode);
    _$hash = $jc(_$hash, tanggalSelesai.hashCode);
    _$hash = $jc(_$hash, prevEvent.hashCode);
    _$hash = $jc(_$hash, h1.hashCode);
    _$hash = $jc(_$hash, subNama.hashCode);
    _$hash = $jc(_$hash, noteNarasi.hashCode);
    _$hash = $jc(_$hash, splitPeriode.hashCode);
    _$hash = $jc(_$hash, flag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Event')
          ..add('id', id)
          ..add('nama', nama)
          ..add('tipe', tipe)
          ..add('tanggalMulai', tanggalMulai)
          ..add('tanggalSelesai', tanggalSelesai)
          ..add('prevEvent', prevEvent)
          ..add('h1', h1)
          ..add('subNama', subNama)
          ..add('noteNarasi', noteNarasi)
          ..add('splitPeriode', splitPeriode)
          ..add('flag', flag))
        .toString();
  }
}

class EventBuilder implements Builder<Event, EventBuilder> {
  _$Event? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _nama;
  String? get nama => _$this._nama;
  set nama(String? nama) => _$this._nama = nama;

  String? _tipe;
  String? get tipe => _$this._tipe;
  set tipe(String? tipe) => _$this._tipe = tipe;

  Date? _tanggalMulai;
  Date? get tanggalMulai => _$this._tanggalMulai;
  set tanggalMulai(Date? tanggalMulai) => _$this._tanggalMulai = tanggalMulai;

  Date? _tanggalSelesai;
  Date? get tanggalSelesai => _$this._tanggalSelesai;
  set tanggalSelesai(Date? tanggalSelesai) =>
      _$this._tanggalSelesai = tanggalSelesai;

  String? _prevEvent;
  String? get prevEvent => _$this._prevEvent;
  set prevEvent(String? prevEvent) => _$this._prevEvent = prevEvent;

  Date? _h1;
  Date? get h1 => _$this._h1;
  set h1(Date? h1) => _$this._h1 = h1;

  String? _subNama;
  String? get subNama => _$this._subNama;
  set subNama(String? subNama) => _$this._subNama = subNama;

  String? _noteNarasi;
  String? get noteNarasi => _$this._noteNarasi;
  set noteNarasi(String? noteNarasi) => _$this._noteNarasi = noteNarasi;

  String? _splitPeriode;
  String? get splitPeriode => _$this._splitPeriode;
  set splitPeriode(String? splitPeriode) => _$this._splitPeriode = splitPeriode;

  int? _flag;
  int? get flag => _$this._flag;
  set flag(int? flag) => _$this._flag = flag;

  EventBuilder() {
    Event._defaults(this);
  }

  EventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _nama = $v.nama;
      _tipe = $v.tipe;
      _tanggalMulai = $v.tanggalMulai;
      _tanggalSelesai = $v.tanggalSelesai;
      _prevEvent = $v.prevEvent;
      _h1 = $v.h1;
      _subNama = $v.subNama;
      _noteNarasi = $v.noteNarasi;
      _splitPeriode = $v.splitPeriode;
      _flag = $v.flag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Event other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Event;
  }

  @override
  void update(void Function(EventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Event build() => _build();

  _$Event _build() {
    final _$result = _$v ??
        new _$Event._(
          id: id,
          nama: nama,
          tipe: tipe,
          tanggalMulai: tanggalMulai,
          tanggalSelesai: tanggalSelesai,
          prevEvent: prevEvent,
          h1: h1,
          subNama: subNama,
          noteNarasi: noteNarasi,
          splitPeriode: splitPeriode,
          flag: flag,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
