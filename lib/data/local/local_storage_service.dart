import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalStorageService extends GetxService {
  late GetStorage _box;

  Future<LocalStorageService> init() async {
    await GetStorage.init();
    _box = GetStorage();
    return this;
  }

  Future<void> setString(String key, String value) async {
    await _box.write(key, value);
  }

  String? getString(String key) {
    return _box.read(key);
  }

  Future<void> setBool(String key, bool value) async {
    await _box.write(key, value);
  }

  bool? getBool(String key) {
    return _box.read(key);
  }

  Future<void> setInt(String key, int value) async {
    await _box.write(key, value);
  }

  int? getInt(String key) {
    return _box.read(key);
  }

  Future<void> setDouble(String key, double value) async {
    await _box.write(key, value);
  }

  Future setList<T>(String key, List<T> value,
      Map<String, dynamic> Function(T) toJson) async {
    List jsonList = value.map((e) => toJson(e)).toList();
    await _box.write(key, jsonList);
  }

  Future setListDefault(
    String key,
    List value,
  ) async {
    await _box.write(key, value);
  }

  List? getListDefault(
    String key,
  ) {
    return _box.read(key);
  }

  List<T>? getList<T>(String key, T Function(Map<String, dynamic>) fromJson) {
    List? jsonList = _box.read(key);
    if (jsonList == null) return null;
    return jsonList.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  Future setObject<T>(String key, Map<String, dynamic> value) async {
    await _box.write(key, value);
  }

  T? getObject<T>(String key, T Function(Map<String, dynamic>) fromJson) {
    final json = _box.read(key);
    if (json == null) return null;
    return fromJson(json as Map<String, dynamic>);
  }

  Future<void> setDateTime(String key, DateTime value) async {
    await _box.write(key, value.toIso8601String());
  }

  DateTime? getDateTime(String key) {
    final value = _box.read(key);
    if (value == null) return null;
    return DateTime.parse(value);
  }

  double? getDouble(String key) {
    return _box.read(key);
  }

  Future<void> remove(String key) async {
    await _box.remove(key);
  }

  Future<void> clearAll() async {
    await _box.erase();
  }

  bool hasData(String key) {
    return _box.hasData(key);
  }

  List getKeys(String key) {
    return _box.getKeys();
  }
}
