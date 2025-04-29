class Endpoints {
  static const String login = "/auth/login";
  static const String getProfile = "/auth/me";
  static const String tokenExchange = "/auth/token-exchange";
  static const String refreshToken = "/auth/refresh-token";
  static const String getNews = "/news/rss";
  static const String getSummarySeasonal = "/summary/seasonal";
  static const String getSummaryRoutine = "/summary/routine";
  static const String getEvent = "/hubnet/data-event";
  static const String getEventJalan = "/hubnet/data-event/jalan";
  static const String getEventArteri = "/hubnet/data-event/arteri";
  static const String getEventAsdp = "/hubnet/data-event/asdp";
  static const String getEventStasiun = "/hubnet/data-event/stasiun";
  static const String getEventToll = "/hubnet/data-event/toll";
  static const String getEventLaut = "/hubnet/data-event/laut";
  static const String getEventUdara = "/hubnet/data-event/udara";
  static const String getAggregate = "/moda/aggregate";
  static const String getRegion = "/moda/regional";
  static const String getProvince = "/hubnet/master-provinsi";
  static const String incidentReport = "/incident-report";
  static const String cctv = "/cctv";
  static const String getPosko = "/posko";
  static const String getDataPantau = "/backend/api/siasati/data-pantau";
  static const String getReport = "/api/strategi/laporan/link-laporan-data";
  static const String getTwoHourReport = "/doc/laporan-dua-jam/list";
  static const String getShiftReport = "/doc/laporan-shift/list";
  static const String getDailyReport = "/doc/laporan-daily/list";
  static const String getWeeklyReport = "/doc/laporan-weekly/list";
  static const String getMatrixReport = "/cir/pantau/api/pelaporan";
  static const String getDataJalanKorlantas =
      "/backend/api/datalake/lakalantas-polri";
}
