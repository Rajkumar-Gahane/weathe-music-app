// coverage:ignore-file

import 'package:weather_app/data/helpers/api_wrapper.dart';
import 'package:weather_app/domain/domain.dart';

/// The helper class which will connect to the world to get the data.
class ConnectHelper {
  ConnectHelper();
  final apiWrapper = ApiWrapper();

  Future<ResponseModel> getWeatherResponse({
    required String cityName,
  }) async =>
      await apiWrapper.makeRequest(
          'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=a074d0846511c8a70cfce6ba4ad06510&units=metric',
          Request.get,
          null,
          false, {});

  Future<ResponseModel> getFiveDayWeatherResponse({
    required String long,
    required String lati,
    required bool isLoading,
  }) async =>
      await apiWrapper.makeRequest(
          'https://api.openweathermap.org/data/2.5/forecast?lat=$lati&lon=$long&appid=76b5222b48869ac7baa1d1239fb2354b&units=metric',
          Request.get,
          null,
          isLoading, {});

  Future<ResponseModel?> getAllCountryPopularCityName() async =>
      await apiWrapper.makeRequest(
          'https://countriesnow.space/api/v0.1/countries',
          Request.get,
          null,
          false, {});

  Future<ResponseModel?> getMusicFromApi() async =>
      await apiWrapper.makeRequest(
        'https://top-10-spotify.p.rapidapi.com/',
        Request.get,
        null,
        false,
        {
          'X-RapidAPI-Key':
              '6384636196msh72ef36278ef686ap188098jsn80025042d132',
          'X-RapidAPI-Host': 'top-10-spotify.p.rapidapi.com'
        },
      );

  // / headers: {
  //   'X-RapidAPI-Key': '6384636196msh72ef36278ef686ap188098jsn80025042d132',
  //   'X-RapidAPI-Host': 'top-10-spotify.p.rapidapi.com'
  // }
}
