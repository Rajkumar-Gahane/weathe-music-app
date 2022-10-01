import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/domain/domain.dart';

class ManageCityController extends GetxController {
  ManageCityController(this._manageCityPresenter);
  final ManageCityPresenter _manageCityPresenter;

  @override
  void onInit() async {
    var position = await _getGeoLocationPosition();
    await getAddressFromLatLong(position);
    // location = 'Lat: ${position.latitude} , Long: ${position.longitude}';
    await getWeatherResponse(cityName: address);
    // await getFiveDayWeatherResponse(
    //   lati: position.latitude.toString(),
    //   long: position.longitude.toString(),
    // );
    await Future.wait<void>([
      getAllCountryPopularCityName(),
    ]);
    super.onInit();
  }

  // ScreenshotController screenShotController = ScreenshotController();
  // Future<void> saveInImage() async {
  //   final directory = (await getApplicationDocumentsDirectory())
  //       .path; //from path_provide package
  //   var fileName = DateTime.now().microsecondsSinceEpoch.toString();
  //   var path = '$directory';
  //   // await screenShotController.captureAndSave(path, fileName: fileName);
  // }

  TextEditingController searchCityTextEditingController =
      TextEditingController();

  List<dynamic> hiveDataList = <dynamic>[];

  Map<int, String> weekdayName = {
    1: 'Monday',
    2: 'Tuesday',
    3: 'Wednesday',
    4: 'Thursday',
    5: 'Friday',
    6: 'Saturday',
    7: 'Sunday'
  };

  List<String> localCityName = [
    'Lacate',
    'Nagpur',
    'Bangalore',
    'Pune',
    'Kangra',
    'Tane',
    'Une',
    'Dharamsala',
    'Jakarta',
    'Delhi',
    'Jaipur',
    'Parish',
    'New York',
    'Mumbai',
    'Tokyo',
    'Tumsar',
    'Gondia',
    'Yol'
  ];

  WeatherDataModel? weatherDataModel;
  Future<WeatherDataModel?> getWeatherResponse(
      {required String cityName}) async {
    var response =
        await _manageCityPresenter.getWeatherResponse(cityName: cityName);
    if (response != null) {
      debugPrint(cityName);
      weatherDataModel = response;
      await getFiveDayWeatherResponse(
        lati: weatherDataModel!.coord!.lat.toString(),
        long: weatherDataModel!.coord!.lon.toString(),
      );
    }
    update();
    return response;
  }

  List<String> cloneOfCountryList = [];

  CountryDataModel? countryDataModel;
  List<String> popularCityList = [];

  /// to change the track the user input details
  void onItemChange(String value) {
    cloneOfCountryList = popularCityList
        .where((element) =>
            element.toString().toLowerCase().contains(value.toLowerCase()))
        .toList();
    update();
  }

  Future<CountryDataModel?> getAllCountryPopularCityName() async {
    var response = await _manageCityPresenter.getAllCountryPopularCityName();
    if (response != null) {
      countryDataModel = response;
      for (var i in countryDataModel!.data!) {
        for (var item in i.cities!) {
          popularCityList.add(item.toString());
          cloneOfCountryList.add(item.toString());
        }
      }
    }
    update();
    return response;
  }

  String location = 'Null, Press Button';
  String address = 'Tumsar';

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> getAddressFromLatLong(Position position) async {
    var placards =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    var place = placards[0];
    address = '${place.subLocality}';
    update();
  }

  List<DayWishDataCollect> weekDataList = [];
  List<DayWishDataCollect> todayWeather = [];
  List<DayWishDataCollect> tomorrowWeather = [];
  FiveDayWeatherResponse? fiveDayWeatherResponse;
  Future<FiveDayWeatherResponse?> getFiveDayWeatherResponse({
    required String long,
    required String lati,
  }) async {
    var response = await _manageCityPresenter.getFiveDayWeatherResponse(
        long: long, lati: lati, isLoading: false);
    if (response != null) {
      fiveDayWeatherResponse = response;
    }
    retunVaueOfDate(fiveDayWeatherResponse: response);
    todayWeather.clear();
    tomorrowWeather.clear();
    for (var i in weekDataList) {
      if (i.day == 'Today') {
        todayWeather.add(i);
      } else if (i.day == 'Tomorrow') {
        tomorrowWeather.add(i);
      }
    }
    return response;
  }

  List<ChartData> chartData = [];

  void retunVaueOfDate({FiveDayWeatherResponse? fiveDayWeatherResponse}) {
    weekDataList.clear();
    for (var i in fiveDayWeatherResponse!.list!) {
      var nowDate = DateTime.now();
      // var dateTime = Utility.returnDateAndTime(i.dt!.toInt()).toString().substring(0,10);
      if (nowDate.toString().substring(0, 10) == i.dtTxt!.substring(0, 10)) {
        weekDataList.add(DayWishDataCollect(mapData: i, day: 'Today'));
        chartData.add(ChartData(
            color: ColorsValue.rejectedColor,
            x: 'Today',
            y: i.main!.tempMax.floor()));
      } else if (nowDate.day + 1 ==
          Utility.returnDateAndTime(i.dt!.toInt()).day) {
        weekDataList.add(DayWishDataCollect(mapData: i, day: 'Tomorrow'));
        chartData.add(ChartData(
            color: ColorsValue.primaryColor,
            x: 'Tomorrow',
            y: i.main!.tempMax.floor()));
      } else if (nowDate.day + 2 ==
          Utility.returnDateAndTime(i.dt!.toInt()).day) {
        weekDataList.add(
          DayWishDataCollect(
            day: weekdayName[Utility.returnDateAndTime(i.dt!.toInt()).weekday]
                .toString(),
            mapData: i,
          ),
        );
        chartData.add(ChartData(
            color: ColorsValue.gradient1Color,
            x: weekdayName[Utility.returnDateAndTime(i.dt!.toInt()).weekday]
                .toString(),
            y: i.main!.tempMax.floor()));
      } else if (nowDate.day + 3 ==
          Utility.returnDateAndTime(i.dt!.toInt()).day) {
        weekDataList.add(
          DayWishDataCollect(
            day: weekdayName[Utility.returnDateAndTime(i.dt!.toInt()).weekday]
                .toString(),
            mapData: i,
          ),
        );
        chartData.add(ChartData(
            color: ColorsValue.blueColor,
            x: weekdayName[Utility.returnDateAndTime(i.dt!.toInt()).weekday]
                .toString(),
            y: i.main!.tempMax.floor()));
      } else if (nowDate.day + 4 ==
          Utility.returnDateAndTime(i.dt!.toInt()).day) {
        weekDataList.add(
          DayWishDataCollect(
            day: weekdayName[Utility.returnDateAndTime(i.dt!.toInt()).weekday]
                .toString(),
            mapData: i,
          ),
        );
        chartData.add(ChartData(
            color: ColorsValue.lightGreyColor3,
            x: weekdayName[Utility.returnDateAndTime(i.dt!.toInt()).weekday]
                .toString(),
            y: i.main!.tempMax.floor()));
      } else if (nowDate.day + 5 ==
          Utility.returnDateAndTime(i.dt!.toInt()).day) {
        weekDataList.add(
          DayWishDataCollect(
            day: weekdayName[Utility.returnDateAndTime(i.dt!.toInt()).weekday]
                .toString(),
            mapData: i,
          ),
        );
        chartData.add(ChartData(
            color: ColorsValue.approvedColor,
            x: weekdayName[Utility.returnDateAndTime(i.dt!.toInt()).weekday]
                .toString(),
            y: i.main!.tempMax.floor()));
      }
    }
  }

  String returnCurrectTimeImage(int time) {
    debugPrint(time.toString());
    if (4 <= time && time < 12) {
      /// morning
      return AssetConstants.bg_9;
    } else if (12 <= time && time < 16) {
      /// afternoon
      return AssetConstants.bg_4;
    } else if (16 <= time && time < 19) {
      /// evening
      return AssetConstants.bg_5;
    } else {
      /// night
      return AssetConstants.bg_8;
    }
  }
}

class ChartData {
  ChartData({required this.color, required this.x, required this.y});
  final String x;
  final dynamic y;
  final Color color;
}
