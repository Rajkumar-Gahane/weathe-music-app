import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather_app/domain/domain.dart';

/// Repositories that communicate with the platform..
class DeviceRepository extends DomainRepository {
  final _flutterSecureStorage = const FlutterSecureStorage();

  ///initialize the hive box
  Future<void> init({bool isTest = false}) async {
    if (isTest) {
      Hive.init('HIVE_TEST');
      await Hive.openBox<dynamic>('weather');
    } else {
      await Hive.initFlutter();
      await Hive.openBox<dynamic>(
        'weather',
      );
    }
  }

  IOSOptions _getIOSOption() => const IOSOptions(accountName: 'weather');

  /// Returns the box in which the data is stored.
  Box _getBox() => Hive.box<dynamic>('weather');

  @override
  String getStringValue(String key) {
    var box = _getBox();
    var value = box.get(key) as String? ?? '';
    return value;
  }

  ///To get Int Value
  @override
  int getIntValue(String key) {
    var box = _getBox();
    var defaultValue = 0;
    var value = box.get(key, defaultValue: defaultValue) as int;
    return value;
  }

  ///to save a value
  @override
  void saveValue(dynamic key, dynamic value) {
    _getBox().put(key, value);
  }

  // to get bool value
  @override
  bool getBoolValue(String key) {
    var box = _getBox();
    var defaultValue = false;
    var value = box.get(key, defaultValue: defaultValue) as bool;
    return value;
  }

  /// to save value securely
  @override
  void saveValueSecurely(String key, String value) async {
    await _flutterSecureStorage.write(
        key: key, value: value, iOptions: _getIOSOption());
  }

  ///to clear data
  @override
  void clearData(dynamic key) {
    _getBox().delete(key);
  }

  /// clear all data
  @override
  void clearBox() {
    _getBox().clear();
  }

  /// to get value securely
  @override
  Future<String> getSecuredValue(String key) async {
    var value =
        await _flutterSecureStorage.read(key: key, iOptions: _getIOSOption());
    if (value != null) {
      return value.toString();
    } else {
      return 'en';
    }
  }

  /// to delete all secure value
  @override
  void deleteAllSecuredValues() async {
    await _flutterSecureStorage.deleteAll(iOptions: _getIOSOption());
  }

  /// to delete particular kay secure value
  @override
  void deleteSecuredValue(String key) async {
    await _flutterSecureStorage.delete(key: key, iOptions: _getIOSOption());
  }

  @override
  Future<ResponseModel?> getWeatherResponse({required String cityName}) {
    throw UnimplementedError();
  }

  @override
  Future<ResponseModel?> getAllCountryPopularCityName() {
    throw UnimplementedError();
  }

  @override
  Future<ResponseModel> getFiveDayWeatherResponse(
      {required String long, required String lati, required bool isLoading}) {
    throw UnimplementedError();
  }

  @override
  Future<ResponseModel?> getMusicFromApi() {
    throw UnimplementedError();
  }
}
