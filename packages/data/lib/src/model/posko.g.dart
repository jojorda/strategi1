// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posko.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Posko extends Posko {
  @override
  final int? id;
  @override
  final int? idJenisPosko;
  @override
  final int? idEvent;
  @override
  final String? namaPosko;
  @override
  final String? alamatPosko;
  @override
  final String? unitKerjaKoordinator;
  @override
  final int? idPesertaPosko;
  @override
  final String? lokasiPosko;
  @override
  final Coordinates? koordinatPosko;
  @override
  final String? ketuaPosko;
  @override
  final String? noTelpKetuaPosko;
  @override
  final String? picPosko;
  @override
  final String? noTelpPosko;
  @override
  final Date? masaPantauAwal;
  @override
  final Date? masaPantauAkhir;
  @override
  final String? titikPantau;
  @override
  final BuiltList<String>? fokusPantau;
  @override
  final String? lampiran;
  @override
  final String? createDate;
  @override
  final String? updateDate;
  @override
  final JenisPosko? jenisPosko;
  @override
  final PesertaPosko? pesertaPosko;
  @override
  final Event? event;

  factory _$Posko([void Function(PoskoBuilder)? updates]) =>
      (new PoskoBuilder()..update(updates))._build();

  _$Posko._(
      {this.id,
      this.idJenisPosko,
      this.idEvent,
      this.namaPosko,
      this.alamatPosko,
      this.unitKerjaKoordinator,
      this.idPesertaPosko,
      this.lokasiPosko,
      this.koordinatPosko,
      this.ketuaPosko,
      this.noTelpKetuaPosko,
      this.picPosko,
      this.noTelpPosko,
      this.masaPantauAwal,
      this.masaPantauAkhir,
      this.titikPantau,
      this.fokusPantau,
      this.lampiran,
      this.createDate,
      this.updateDate,
      this.jenisPosko,
      this.pesertaPosko,
      this.event})
      : super._();

  @override
  Posko rebuild(void Function(PoskoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PoskoBuilder toBuilder() => new PoskoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Posko &&
        id == other.id &&
        idJenisPosko == other.idJenisPosko &&
        idEvent == other.idEvent &&
        namaPosko == other.namaPosko &&
        alamatPosko == other.alamatPosko &&
        unitKerjaKoordinator == other.unitKerjaKoordinator &&
        idPesertaPosko == other.idPesertaPosko &&
        lokasiPosko == other.lokasiPosko &&
        koordinatPosko == other.koordinatPosko &&
        ketuaPosko == other.ketuaPosko &&
        noTelpKetuaPosko == other.noTelpKetuaPosko &&
        picPosko == other.picPosko &&
        noTelpPosko == other.noTelpPosko &&
        masaPantauAwal == other.masaPantauAwal &&
        masaPantauAkhir == other.masaPantauAkhir &&
        titikPantau == other.titikPantau &&
        fokusPantau == other.fokusPantau &&
        lampiran == other.lampiran &&
        createDate == other.createDate &&
        updateDate == other.updateDate &&
        jenisPosko == other.jenisPosko &&
        pesertaPosko == other.pesertaPosko &&
        event == other.event;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, idJenisPosko.hashCode);
    _$hash = $jc(_$hash, idEvent.hashCode);
    _$hash = $jc(_$hash, namaPosko.hashCode);
    _$hash = $jc(_$hash, alamatPosko.hashCode);
    _$hash = $jc(_$hash, unitKerjaKoordinator.hashCode);
    _$hash = $jc(_$hash, idPesertaPosko.hashCode);
    _$hash = $jc(_$hash, lokasiPosko.hashCode);
    _$hash = $jc(_$hash, koordinatPosko.hashCode);
    _$hash = $jc(_$hash, ketuaPosko.hashCode);
    _$hash = $jc(_$hash, noTelpKetuaPosko.hashCode);
    _$hash = $jc(_$hash, picPosko.hashCode);
    _$hash = $jc(_$hash, noTelpPosko.hashCode);
    _$hash = $jc(_$hash, masaPantauAwal.hashCode);
    _$hash = $jc(_$hash, masaPantauAkhir.hashCode);
    _$hash = $jc(_$hash, titikPantau.hashCode);
    _$hash = $jc(_$hash, fokusPantau.hashCode);
    _$hash = $jc(_$hash, lampiran.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, updateDate.hashCode);
    _$hash = $jc(_$hash, jenisPosko.hashCode);
    _$hash = $jc(_$hash, pesertaPosko.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Posko')
          ..add('id', id)
          ..add('idJenisPosko', idJenisPosko)
          ..add('idEvent', idEvent)
          ..add('namaPosko', namaPosko)
          ..add('alamatPosko', alamatPosko)
          ..add('unitKerjaKoordinator', unitKerjaKoordinator)
          ..add('idPesertaPosko', idPesertaPosko)
          ..add('lokasiPosko', lokasiPosko)
          ..add('koordinatPosko', koordinatPosko)
          ..add('ketuaPosko', ketuaPosko)
          ..add('noTelpKetuaPosko', noTelpKetuaPosko)
          ..add('picPosko', picPosko)
          ..add('noTelpPosko', noTelpPosko)
          ..add('masaPantauAwal', masaPantauAwal)
          ..add('masaPantauAkhir', masaPantauAkhir)
          ..add('titikPantau', titikPantau)
          ..add('fokusPantau', fokusPantau)
          ..add('lampiran', lampiran)
          ..add('createDate', createDate)
          ..add('updateDate', updateDate)
          ..add('jenisPosko', jenisPosko)
          ..add('pesertaPosko', pesertaPosko)
          ..add('event', event))
        .toString();
  }
}

class PoskoBuilder implements Builder<Posko, PoskoBuilder> {
  _$Posko? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _idJenisPosko;
  int? get idJenisPosko => _$this._idJenisPosko;
  set idJenisPosko(int? idJenisPosko) => _$this._idJenisPosko = idJenisPosko;

  int? _idEvent;
  int? get idEvent => _$this._idEvent;
  set idEvent(int? idEvent) => _$this._idEvent = idEvent;

  String? _namaPosko;
  String? get namaPosko => _$this._namaPosko;
  set namaPosko(String? namaPosko) => _$this._namaPosko = namaPosko;

  String? _alamatPosko;
  String? get alamatPosko => _$this._alamatPosko;
  set alamatPosko(String? alamatPosko) => _$this._alamatPosko = alamatPosko;

  String? _unitKerjaKoordinator;
  String? get unitKerjaKoordinator => _$this._unitKerjaKoordinator;
  set unitKerjaKoordinator(String? unitKerjaKoordinator) =>
      _$this._unitKerjaKoordinator = unitKerjaKoordinator;

  int? _idPesertaPosko;
  int? get idPesertaPosko => _$this._idPesertaPosko;
  set idPesertaPosko(int? idPesertaPosko) =>
      _$this._idPesertaPosko = idPesertaPosko;

  String? _lokasiPosko;
  String? get lokasiPosko => _$this._lokasiPosko;
  set lokasiPosko(String? lokasiPosko) => _$this._lokasiPosko = lokasiPosko;

  CoordinatesBuilder? _koordinatPosko;
  CoordinatesBuilder get koordinatPosko =>
      _$this._koordinatPosko ??= new CoordinatesBuilder();
  set koordinatPosko(CoordinatesBuilder? koordinatPosko) =>
      _$this._koordinatPosko = koordinatPosko;

  String? _ketuaPosko;
  String? get ketuaPosko => _$this._ketuaPosko;
  set ketuaPosko(String? ketuaPosko) => _$this._ketuaPosko = ketuaPosko;

  String? _noTelpKetuaPosko;
  String? get noTelpKetuaPosko => _$this._noTelpKetuaPosko;
  set noTelpKetuaPosko(String? noTelpKetuaPosko) =>
      _$this._noTelpKetuaPosko = noTelpKetuaPosko;

  String? _picPosko;
  String? get picPosko => _$this._picPosko;
  set picPosko(String? picPosko) => _$this._picPosko = picPosko;

  String? _noTelpPosko;
  String? get noTelpPosko => _$this._noTelpPosko;
  set noTelpPosko(String? noTelpPosko) => _$this._noTelpPosko = noTelpPosko;

  Date? _masaPantauAwal;
  Date? get masaPantauAwal => _$this._masaPantauAwal;
  set masaPantauAwal(Date? masaPantauAwal) =>
      _$this._masaPantauAwal = masaPantauAwal;

  Date? _masaPantauAkhir;
  Date? get masaPantauAkhir => _$this._masaPantauAkhir;
  set masaPantauAkhir(Date? masaPantauAkhir) =>
      _$this._masaPantauAkhir = masaPantauAkhir;

  String? _titikPantau;
  String? get titikPantau => _$this._titikPantau;
  set titikPantau(String? titikPantau) => _$this._titikPantau = titikPantau;

  ListBuilder<String>? _fokusPantau;
  ListBuilder<String> get fokusPantau =>
      _$this._fokusPantau ??= new ListBuilder<String>();
  set fokusPantau(ListBuilder<String>? fokusPantau) =>
      _$this._fokusPantau = fokusPantau;

  String? _lampiran;
  String? get lampiran => _$this._lampiran;
  set lampiran(String? lampiran) => _$this._lampiran = lampiran;

  String? _createDate;
  String? get createDate => _$this._createDate;
  set createDate(String? createDate) => _$this._createDate = createDate;

  String? _updateDate;
  String? get updateDate => _$this._updateDate;
  set updateDate(String? updateDate) => _$this._updateDate = updateDate;

  JenisPoskoBuilder? _jenisPosko;
  JenisPoskoBuilder get jenisPosko =>
      _$this._jenisPosko ??= new JenisPoskoBuilder();
  set jenisPosko(JenisPoskoBuilder? jenisPosko) =>
      _$this._jenisPosko = jenisPosko;

  PesertaPoskoBuilder? _pesertaPosko;
  PesertaPoskoBuilder get pesertaPosko =>
      _$this._pesertaPosko ??= new PesertaPoskoBuilder();
  set pesertaPosko(PesertaPoskoBuilder? pesertaPosko) =>
      _$this._pesertaPosko = pesertaPosko;

  EventBuilder? _event;
  EventBuilder get event => _$this._event ??= new EventBuilder();
  set event(EventBuilder? event) => _$this._event = event;

  PoskoBuilder() {
    Posko._defaults(this);
  }

  PoskoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _idJenisPosko = $v.idJenisPosko;
      _idEvent = $v.idEvent;
      _namaPosko = $v.namaPosko;
      _alamatPosko = $v.alamatPosko;
      _unitKerjaKoordinator = $v.unitKerjaKoordinator;
      _idPesertaPosko = $v.idPesertaPosko;
      _lokasiPosko = $v.lokasiPosko;
      _koordinatPosko = $v.koordinatPosko?.toBuilder();
      _ketuaPosko = $v.ketuaPosko;
      _noTelpKetuaPosko = $v.noTelpKetuaPosko;
      _picPosko = $v.picPosko;
      _noTelpPosko = $v.noTelpPosko;
      _masaPantauAwal = $v.masaPantauAwal;
      _masaPantauAkhir = $v.masaPantauAkhir;
      _titikPantau = $v.titikPantau;
      _fokusPantau = $v.fokusPantau?.toBuilder();
      _lampiran = $v.lampiran;
      _createDate = $v.createDate;
      _updateDate = $v.updateDate;
      _jenisPosko = $v.jenisPosko?.toBuilder();
      _pesertaPosko = $v.pesertaPosko?.toBuilder();
      _event = $v.event?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Posko other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Posko;
  }

  @override
  void update(void Function(PoskoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Posko build() => _build();

  _$Posko _build() {
    _$Posko _$result;
    try {
      _$result = _$v ??
          new _$Posko._(
            id: id,
            idJenisPosko: idJenisPosko,
            idEvent: idEvent,
            namaPosko: namaPosko,
            alamatPosko: alamatPosko,
            unitKerjaKoordinator: unitKerjaKoordinator,
            idPesertaPosko: idPesertaPosko,
            lokasiPosko: lokasiPosko,
            koordinatPosko: _koordinatPosko?.build(),
            ketuaPosko: ketuaPosko,
            noTelpKetuaPosko: noTelpKetuaPosko,
            picPosko: picPosko,
            noTelpPosko: noTelpPosko,
            masaPantauAwal: masaPantauAwal,
            masaPantauAkhir: masaPantauAkhir,
            titikPantau: titikPantau,
            fokusPantau: _fokusPantau?.build(),
            lampiran: lampiran,
            createDate: createDate,
            updateDate: updateDate,
            jenisPosko: _jenisPosko?.build(),
            pesertaPosko: _pesertaPosko?.build(),
            event: _event?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'koordinatPosko';
        _koordinatPosko?.build();

        _$failedField = 'fokusPantau';
        _fokusPantau?.build();

        _$failedField = 'jenisPosko';
        _jenisPosko?.build();
        _$failedField = 'pesertaPosko';
        _pesertaPosko?.build();
        _$failedField = 'event';
        _event?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Posko', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
