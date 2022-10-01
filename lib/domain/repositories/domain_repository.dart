import 'package:weather_app/domain/domain.dart';
abstract class DomainRepository {
  void deleteSecuredValue(String key);
  void deleteAllSecuredValues();
  Future<String> getSecuredValue(String key);
  void clearBox();
  void clearData(dynamic key);
  void saveValueSecurely(String key, String value);
  bool getBoolValue(String key);
  void saveValue(dynamic key, dynamic value);
  int getIntValue(String key);
  String getStringValue(String key);

  Future<ResponseModel?> getWeatherResponse({required String cityName});
  Future<ResponseModel?> getAllCountryPopularCityName();

  Future<ResponseModel> getFiveDayWeatherResponse({
    required String long,
    required String lati,
    required bool isLoading,
  });

  Future<ResponseModel?> getMusicFromApi();
}