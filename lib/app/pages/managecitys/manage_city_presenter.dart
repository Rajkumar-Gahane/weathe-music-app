import 'package:weather_app/domain/domain.dart';

class ManageCityPresenter {
  ManageCityPresenter(this._authUseCase);
  final AuthUseCase _authUseCase;

  Future<WeatherDataModel?> getWeatherResponse(
          {required String cityName}) async =>
      await _authUseCase.getWeatherResponse(cityName: cityName);

  Future<CountryDataModel?> getAllCountryPopularCityName() async =>
      await _authUseCase.getAllCountryPopularCityName();

  Future<FiveDayWeatherResponse?> getFiveDayWeatherResponse(
      {required String long,
        required String lati,
        required bool isLoading}) async =>
      await _authUseCase.getFiveDayWeatherResponse(
          long: long, lati: lati, isLoading: isLoading);

  Future<ResponseModel?> getMusicFromApi()async => await _authUseCase.getMusicFromApi();

}
