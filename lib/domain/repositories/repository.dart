import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:weather_app/data/repositories/data_repositories.dart';
import 'package:weather_app/device/repositories/device_repositories.dart';
import 'package:weather_app/domain/domain.dart';

/// The main repository which will get the data from [DeviceRepository] or the
/// [DataRepository].
class Repository {
  Repository(this._deviceRepository, this._dataRepository);

  final DeviceRepository _deviceRepository;
  final DataRepository _dataRepository;

  Future<WeatherDataModel?> getWeatherResponse(
      {required String cityName}) async {
    try {
      var response =
          await _dataRepository.getWeatherResponse(cityName: cityName);
      if (!response!.hasError) {
        var data = weatherDataModelFromJson(response.data);
        return data;
      } else {
        return null;
      }
    } catch (_) {
      var data = await _deviceRepository.getWeatherResponse(cityName: cityName);
      debugPrint(data.toString());
      return null;
    }
  }

  Future<CountryDataModel?> getAllCountryPopularCityName() async {
    try {
      var response = await _dataRepository.getAllCountryPopularCityName();
      if (!response!.hasError) {
        var data = countryDataModelFromJson(response.data);
        return data;
      } else {
        return null;
      }
    } catch (_) {
      var data = await _deviceRepository.getAllCountryPopularCityName();
      debugPrint(data.toString());
      return null;
    }
  }

  /// FiveDayWeatherResponse
  Future<FiveDayWeatherResponse?> getFiveDayWeatherResponse(
      {required String long,
      required String lati,
      required bool isLoading}) async {
    try {
      var response = await _dataRepository.getFiveDayWeatherResponse(
          long: long, lati: lati, isLoading: isLoading);
      if (!response.hasError) {
        var data = fiveDayWeatherResponseFromJson(response.data);
        return data;
      } else {
        return null;
      }
    } catch (_) {
      var data = await _deviceRepository.getFiveDayWeatherResponse(
          long: long, lati: lati, isLoading: isLoading);
      debugPrint(data.toString());
      return null;
    }
  }

  Future<ResponseModel?> getMusicFromApi()async{
    var response = await _dataRepository.getMusicFromApi();
    log(response!.data);
    return null;
  }
}
