// To parse this JSON data, do
//
//     final weatherDataModel = weatherDataModelFromJson(jsonString);

import 'dart:convert';

WeatherDataModel weatherDataModelFromJson(String str) =>
    WeatherDataModel.fromJson(json.decode(str) as Map<String, dynamic>);

String weatherDataModelToJson(WeatherDataModel data) =>
    json.encode(data.toJson());

class WeatherDataModel {
  WeatherDataModel({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  factory WeatherDataModel.fromJson(Map<String, dynamic> json) =>
      WeatherDataModel(
        coord: Coord.fromJson(json['coord'] as Map<String, dynamic>),
        weather: json['weather'] != null
            ? List<Weather>.from(
                (json['weather'] as List<dynamic>? ?? <dynamic>[])
                    .map<dynamic>(
                  (dynamic x) => Weather.fromJson(x as Map<String, dynamic>),
                ),
              )
            : [],
        base: json['base'] as String? ?? '',
        main: Main.fromJson(json['main'] as Map<String, dynamic>),
        visibility: json['visibility'] as int? ?? 0,
        wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
        clouds: Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
        dt: json['dt'] as int? ?? 0,
        sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
        timezone: json['timezone'] as int? ?? 0,
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
        cod: json['cod'] as int? ?? 0,
      );

  Coord? coord;
  List<Weather>? weather;
  String? base;
  Main? main;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'coord': coord!.toJson(),
        'weather': List<dynamic>,
        'base': base,
        'main': main!.toJson(),
        'visibility': visibility,
        'wind': wind!.toJson(),
        'clouds': clouds!.toJson(),
        'dt': dt,
        'sys': sys!.toJson(),
        'timezone': timezone,
        'id': id,
        'name': name,
        'cod': cod,
      };
}

class Clouds {
  Clouds({
    this.all,
  });

  factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
        all: json['all'] as int? ?? 0,
      );

  int? all;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'all': all,
      };
}

class Coord {
  Coord({
    this.lon,
    this.lat,
  });

  factory Coord.fromJson(Map<String, dynamic> json) => Coord(
        lon: json['lon'],
        lat: json['lat'],
      );

  dynamic lon;
  dynamic lat;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'lon': lon,
        'lat': lat,
      };
}

class Main {
  Main({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
  });

  factory Main.fromJson(Map<String, dynamic> json) => Main(
        temp: json['temp'].toDouble(),
        feelsLike: json['feels_like'],
        tempMin: json['temp_min'],
        tempMax: json['temp_max'],
        pressure: json['pressure'] as int? ?? 0,
        humidity: json['humidity'] as int? ?? 0,
      );

  dynamic temp;
  dynamic feelsLike;
  dynamic tempMin;
  dynamic tempMax;
  int? pressure;
  int? humidity;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'temp': temp,
        'feels_like': feelsLike,
        'temp_min': tempMin,
        'temp_max': tempMax,
        'pressure': pressure,
        'humidity': humidity,
      };
}

class Sys {
  Sys({
    this.type,
    this.id,
    this.country,
    this.sunrise,
    this.sunset,
  });

  factory Sys.fromJson(Map<String, dynamic> json) => Sys(
        type: json['type'] as int? ?? 0,
        id: json['id'] as int? ?? 0,
        country: json['country'] as String? ?? '',
        sunrise: json['sunrise'] as int? ?? 0,
        sunset: json['sunset'] as int? ?? 0,
      );

  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type,
        'id': id,
        'country': country,
        'sunrise': sunrise,
        'sunset': sunset,
      };
}

class Weather {
  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
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

class Wind {
  Wind({
    this.speed,
    this.deg,
  });

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        speed: json['speed'],
        deg: json['deg'] as int? ?? 0,
      );

  dynamic speed;
  int? deg;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'speed': speed,
        'deg': deg,
      };
}
