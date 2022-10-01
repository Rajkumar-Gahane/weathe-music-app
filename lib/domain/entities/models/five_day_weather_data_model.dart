// To parse this JSON data, do
//
//     final fiveDayWeatherResponse = fiveDayWeatherResponseFromJson(jsonString);

import 'dart:convert';


FiveDayWeatherResponse fiveDayWeatherResponseFromJson(String str) =>
    FiveDayWeatherResponse.fromJson(json.decode(str) as Map<String, dynamic>);

String fiveDayWeatherResponseToJson(FiveDayWeatherResponse data) =>
    json.encode(data.toJson());

class FiveDayWeatherResponse {
  FiveDayWeatherResponse({
    this.cod,
    this.message,
    this.cnt,
    this.list,
    this.city,
  });

  factory FiveDayWeatherResponse.fromJson(Map<String, dynamic> json) =>
      FiveDayWeatherResponse(
        cod: json['cod'] as String? ?? '',
        message: json['message'] as int? ?? 0,
        cnt: json['cnt'] as int? ?? 0,
        list: json['list'] != null
            ? List<ListElement>.from(
                (json['list'] as List<dynamic>? ?? <dynamic>[]).map<dynamic>(
                  (dynamic x) =>
                      ListElement.fromJson(x as Map<String, dynamic>),
                ),
              )
            : [],
        // list: List<ListElement>.from(json['list'].map((x) => ListElement.fromJson(x))),
        city: City.fromJson(json['city'] as Map<String, dynamic>),
      );

  String? cod;
  int? message;
  int? cnt;
  List<ListElement>? list;
  City? city;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'cod': cod,
        'message': message,
        'cnt': cnt,
        'list': List<dynamic>,
        'city': city!.toJson(),
      };
}

class City {
  City({
    this.id,
    this.name,
    this.coord,
    this.country,
    this.population,
    this.timezone,
    this.sunrise,
    this.sunset,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
        coord: CoordLatLog.fromJson(json['coord'] as Map<String, dynamic>),
        country: json['country'] as String? ?? '',
        population: json['population'],
        timezone: json['timezone'] as int? ?? 0,
        sunrise: json['sunrise'] as int? ?? 0,
        sunset: json['sunset'] as int? ?? 0,
      );

  int? id;
  String? name;
  CoordLatLog? coord;
  String? country;
  dynamic population;
  int? timezone;
  int? sunrise;
  int? sunset;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'coord': coord!.toJson(),
        'country': country,
        'population': population,
        'timezone': timezone,
        'sunrise': sunrise,
        'sunset': sunset,
      };
}

class CoordLatLog {
  CoordLatLog({
    this.lat,
    this.lon,
  });

  factory CoordLatLog.fromJson(Map<String, dynamic> json) => CoordLatLog(
        lat: json['lat'],
        lon: json['lon'],
      );

  dynamic lat;
  dynamic lon;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'lat': lat,
        'lon': lon,
      };
}

class ListElement {
  ListElement({
    this.dt,
    this.main,
    this.weather,
    this.visibility,
    this.pop,
    this.dtTxt,
  });

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        dt: json['dt'] as int? ?? 0,
        main: MainClass.fromJson(json['main'] as Map<String, dynamic>),
        weather: json['weather'] != null
            ? List<FiveDayWeather>.from(
                (json['weather'] as List<dynamic>? ?? <dynamic>[]).map<dynamic>(
                  (dynamic x) =>
                      FiveDayWeather.fromJson(x as Map<String, dynamic>),
                ),
              )
            : [],
        visibility: json['visibility'],
        pop: json['pop'],
        dtTxt: json['dt_txt'] as String? ?? '',
      );

  int? dt;
  MainClass? main;
  List<FiveDayWeather>? weather;
  dynamic visibility;
  dynamic pop;
  String? dtTxt;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'dt': dt,
        'main': main!.toJson(),
        'weather': List<dynamic>,
        'visibility': visibility,
        'pop': pop,
      };
}

class CloudsWeather {
  CloudsWeather({
    this.all,
  });

  factory CloudsWeather.fromJson(Map<String, dynamic> json) => CloudsWeather(
        all: json['all'] as int? ?? 0,
      );

  int? all;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'all': all,
      };
}

class MainClass {
  MainClass({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.seaLevel,
    this.grndLevel,
    this.humidity,
    this.tempKf,
  });

  factory MainClass.fromJson(Map<String, dynamic> json) => MainClass(
        temp: json['temp'],
        feelsLike: json['feels_like'],
        tempMin: json['temp_min'],
        tempMax: json['temp_max'],
        pressure: json['pressure'],
        seaLevel: json['sea_level'],
        grndLevel: json['grnd_level'],
        humidity: json['humidity'],
        tempKf: json['temp_kf'],
      );

  dynamic temp;
  dynamic feelsLike;
  dynamic tempMin;
  dynamic tempMax;
  dynamic pressure;
  dynamic seaLevel;
  dynamic grndLevel;
  dynamic humidity;
  dynamic tempKf;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'temp': temp,
        'feels_like': feelsLike,
        'temp_min': tempMin,
        'temp_max': tempMax,
        'pressure': pressure,
        'sea_level': seaLevel,
        'grnd_level': grndLevel,
        'humidity': humidity,
        'temp_kf': tempKf,
      };
}

class FiveDayWeather {
  FiveDayWeather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  factory FiveDayWeather.fromJson(Map<String, dynamic> json) => FiveDayWeather(
        id: json['id'] as int? ?? 0,
        main: json['main'] as String? ?? '',
        description: json['description'] as String? ?? '',
        icon: json['icon'] as String? ?? '',
      );

  int? id;
  String? main;
  String? description;
  String? icon;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'main': main,
        'description': description,
        'icon': icon,
      };
}

class DayWishDataCollect {
  DayWishDataCollect({required this.mapData,required this.day});
  ListElement mapData;
  String day;
}
