class Constant {
  static const List<String> tabMenu = [
    'Komparasi',
    'Fokus',
    'Jalan',
    'Penyeberangan',
    'Laut',
    'Udara',
    'Perkeretaapian',
    'Tol',
    'Arteri',
    'CCTV',
    'Liputan',
    '30 Second',
  ];

  static const List<String> tabLaporan = [
    // 'Semua',
    'Laporan Data',
    'Laporan 2 Jam',
    'Laporan Shift',
    'Laporan Harian',
    'Laporan Mingguan',
    // 'Posko Terpadu',
    // 'Booth Posko Terpadu',
    // 'Posko Lapangan',
    // 'Posko Lain',
    // 'Piket IM',
    // 'Kinerja Pelaporan',
  ];
  // static const List<String> tabLaporan = [
  //   'Semua',
  //   'Harian PIT',
  //   'Mingguan PIT',
  //   'Event PIT',
  //   'Fokus PIT',
  //   'Posko Terpadu',
  //   'Booth Posko Terpadu',
  //   'Posko Lapangan',
  //   'Posko Lain',
  //   'Piket IM',
  //   'Kinerja Pelaporan',
  // ];

  static List<String> tabJalan = [
    'Agregat',
    'Wilayah',
    'OD',
    'Operator',
    'Kecelakaan',
    'Kejadian Menonjol',
  ];
  static List<String> tabJalans = [
    'Agregat',
    'Wilayah',
    'Simpul',
    'OD',
    'Operator',
    'Kecelakaan',
    'Kejadian Menonjol',
    'Laka Lantas'
  ];

  static List<String> tabLaut = [
    'Agregat',
    'Wilayah',
    'OD',
    'Operator',
    'Kecelakaan',
    'Kejadian Menonjol',
  ];

  static List<String> tabArteri = [
    'Agregat',
    'Wilayah',
    'OD',
    'Operator',
    'Kecelakaan',
    'Kejadian Menonjol',
  ];

  static List<String> tabPenyebrangan = [
    'Agregat',
    'Wilayah',
    'OD',
    'Operator',
    'Kecelakaan',
    'Kejadian Menonjol',
  ];

  static List<String> tabPerkeretaapian = [
    'Agregat',
    'Wilayah',
    'OD',
    'Operator',
    'Kecelakaan',
    'Kejadian Menonjol',
  ];

  static List<String> tabUdara = [
    'Agregat',
    'Wilayah',
    'OD',
    'Operator',
    'Kecelakaan',
    'Kejadian Menonjol',
  ];

  static List<String> tabTol = [
    'Agregat',
    'Operator',
    'Kecelakaan',
  ];

  static List<double> chartIntervals = [
    5,
    10,
    20,
    50,
    100,
    200,
    500,
    1000,
    2000,
    5000,
    10000,
    20000,
    50000
  ];
}

enum PickDateType { week, month, year }
