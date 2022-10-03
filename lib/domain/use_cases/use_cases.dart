import 'package:weather_app/domain/domain.dart';

class AuthUseCase {
  AuthUseCase(this._respository);
  final Repository _respository;

  Future<WeatherDataModel?> getWeatherResponse(
          {required String cityName}) async =>
      await _respository.getWeatherResponse(cityName: cityName);

  Future<CountryDataModel?> getAllCountryPopularCityName() async =>
      await _respository.getAllCountryPopularCityName();

  Future<FiveDayWeatherResponse?> getFiveDayWeatherResponse(
          {required String long,
          required String lati,
          required bool isLoading}) async =>
      await _respository.getFiveDayWeatherResponse(
          long: long, lati: lati, isLoading: isLoading);

  Future<ResponseModel?> getMusicFromApi()async => await _respository.getMusicFromApi();
}
