import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/domain/domain.dart';

class ShowWeatherAndAdd extends StatelessWidget {
  const ShowWeatherAndAdd({Key? key, required this.weatherDataModel})
      : super(key: key);
  final WeatherDataModel weatherDataModel;

  @override
  Widget build(BuildContext context) => GetBuilder<ManageCityController>(
        builder: (_controller) => Scaffold(
          body: Container(
            height: Dimens.percentHeight(1),
            width: Dimens.percentWidth(1),
            decoration: BoxDecoration(
              image: DecorationImage(
                opacity: 0.6,
                image: AssetImage(
                  weatherDataModel.weather![0].main == 'Rain'
                      ? AssetConstants.bg_7
                      : weatherDataModel.weather![0].main == 'Clouds'
                          ? AssetConstants.bg_3
                          : weatherDataModel.weather![0].main == 'Mist'
                              ? AssetConstants.bg_6
                              : weatherDataModel.weather![0].main == 'Haze'
                                  ? AssetConstants.bg_2
                                  : AssetConstants.bg_4,
                ),
                fit: BoxFit.cover,
              ),
            ),
            // color: Get.theme.backgroundColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Dimens.boxHeight40,
                  Text(
                    '${weatherDataModel.main!.temp.floor().toString()}°C',
                    style: Styles.mediumDarkGrey40,
                  ),
                  Dimens.boxHeight10,
                  Text(
                    '${weatherDataModel.weather![0].main}',
                    style: Styles.mediumWhite20,
                  ),
                  // Dimens.boxHeight8,
                  Text(
                    '${weatherDataModel.name ?? ''} - ${weatherDataModel.sys!.country}',
                    style: Styles.mediumLightWhite30,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                  Dimens.boxHeight15,
                  Text(
                    'Max-Tem ${weatherDataModel.main!.tempMax.floor().toString()}°c - Min-Tem ${weatherDataModel.main!.tempMin.ceil().toString()}°c',
                    style: Styles.mediumBlack20,
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FloatingActionButton(
                  backgroundColor: ColorsValue.containerBGColor,
                  hoverColor: Colors.red,
                  focusColor: Colors.green,
                  elevation: 9,
                  onPressed: () async {
                    var mainData = {
                      'name': weatherDataModel.name.toString(),
                      'max-Tem':
                          weatherDataModel.main!.tempMax.floor().toString(),
                      'min-Tem':
                          weatherDataModel.main!.tempMin.ceil().toString()
                    };
                    // _controller.hiveDataList.clear();
                    _controller.hiveDataList.add(mainData);
                    // RouteManagement.goToHome();
                    await Get.to<void>(()=>const WeatherHomeView());
                    // Get.find<DeviceRepository>()
                    //     .saveValue('weatherCity', weatherDataModel.name);
                    // Get.find<DeviceRepository>().saveValue(
                    //     'weather', _controller.hiveDataList.toString());
                  },
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                Dimens.boxHeight10,
                Text(
                  'Add to start page',
                  style: Styles.mediumWhite14,
                )
              ],
            ),
          ),
        ),
      );
}
