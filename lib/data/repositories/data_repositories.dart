import 'package:weather_app/data/helpers/connect_helper.dart';
import 'package:weather_app/domain/domain.dart';

/// Class communicating with Domain Repository
class DataRepository extends DomainRepository {
  DataRepository(this._connectHelper);

  final ConnectHelper _connectHelper;

  @override
  Future<ResponseModel?> getWeatherResponse({
    required String cityName,
  }) async =>
      await _connectHelper.getWeatherResponse(cityName: cityName);

  @override
  void clearBox() {}

  @override
  void clearData(dynamic key) {}

  @override
  void deleteAllSecuredValues() {}

  @override
  void deleteSecuredValue(String key) {}

  @override
  bool getBoolValue(String key) {
    throw UnimplementedError();
  }

  @override
  int getIntValue(String key) {
    throw UnimplementedError();
  }

  @override
  Future<String> getSecuredValue(String key) {
    throw UnimplementedError();
  }

  @override
  String getStringValue(String key) {
    throw UnimplementedError();
  }

  @override
  void saveValue(dynamic key, dynamic value) {}

  @override
  void saveValueSecurely(String key, String value) {}

  @override
  Future<ResponseModel?> getAllCountryPopularCityName() async =>
      await _connectHelper.getAllCountryPopularCityName();

  @override
  Future<ResponseModel> getFiveDayWeatherResponse(
          {required String long,
          required String lati,
          required bool isLoading}) async =>
      await _connectHelper.getFiveDayWeatherResponse(
          long: long, lati: lati, isLoading: isLoading);

  @override
  Future<ResponseModel?> getMusicFromApi() async => await _connectHelper.getMusicFromApi();
}
