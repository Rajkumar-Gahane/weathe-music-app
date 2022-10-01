// To parse this JSON data, do
//
//     final countryDataModel = countryDataModelFromJson(jsonString);

import 'dart:convert';

CountryDataModel countryDataModelFromJson(String str) =>
    CountryDataModel.fromJson(json.decode(str) as Map<String, dynamic>);

String countryDataModelToJson(CountryDataModel data) =>
    json.encode(data.toJson());

class CountryDataModel {
  CountryDataModel({
    this.error,
    this.msg,
    this.data,
  });

  factory CountryDataModel.fromJson(Map<String, dynamic> json) =>
      CountryDataModel(
        error: json['error'] as bool? ?? false,
        msg: json['msg'] as String? ?? '',
        // data: List<Datum>.from(json['data'].map((x) => Datum.fromJson(x))),
        data: json['data'] != null
            ? List<CountryData>.from(
                (json['data'] as List<dynamic>? ?? <dynamic>[]).map<dynamic>(
                  (dynamic x) =>
                      CountryData.fromJson(x as Map<String, dynamic>),
                ),
              )
            : [],
      );

  bool? error;
  String? msg;
  List<CountryData>? data;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'error': error,
        'msg': msg,
        'data': List<dynamic>,
      };
}

class CountryData {
  CountryData({
    this.iso2,
    this.iso3,
    this.country,
    this.cities,
  });

  factory CountryData.fromJson(Map<String, dynamic> json) => CountryData(
        iso2: json['iso2'] as String? ?? '',
        iso3: json['iso3'] as String? ?? '',
        country: json['country'] as String? ?? '',
        cities: List<dynamic>.from(json['cities'] as List<dynamic>),
      );

  String? iso2;
  String? iso3;
  String? country;
  List<dynamic>? cities;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'iso2': iso2,
        'iso3': iso3,
        'country': country,
        'cities': List<dynamic>,
      };
}
