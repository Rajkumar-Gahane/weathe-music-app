import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/app/pages/audio_palyer_view/audio_player_page_view.dart';

class WeatherHomeView extends StatelessWidget {
  const WeatherHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<ManageCityController>(
        builder: (_controller) => Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              _controller.weatherDataModel == null
                  ? ''
                  : _controller.weatherDataModel!.name!,
              style: const TextStyle(color: Colors.white),
            ),
            leading: InkWell(
              onTap: () {
                Get.to<void>(
                  () => const ManageCityPageView(),
                );
              },
              child: Icon(
                Icons.add,
                size: Dimens.twentyFive,
                color: _controller.weatherDataModel == null
                    ? Colors.black
                    : Colors.white,
              ),
            ),
            actions: [
              PopupMenuButton<int>(
                onSelected: (value) async {
                 // await _controller.saveInImage();
                  // await _controller.screenShotController
                  //     .captureAndSave()
                  //     .then((capturedImage) async {
                  // await Get.to<void>(()=>const MusicPlayerLIstView());
                  RouteManagement.goToAudioPlayer();
                    // await FlutterShare.share(title: 'Weather', linkUrl: '',);
                  //   // await ShowCapturedWidget(context, capturedImage);
                  // });
                  // await screenShotController.capture().then((value) => print);
                },
                icon: Icon(
                  Icons.more_vert,
                  color: _controller.weatherDataModel == null
                      ? Colors.black
                      : Colors.white,
                ),
                padding: Dimens.edgeInsets20,
                position: PopupMenuPosition.over,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimens.ten),
                  ),
                ),
                itemBuilder: (context) => <PopupMenuEntry<int>>[
                  PopupMenuItem(
                      child: Text(
                        'Audio',
                        style: Styles.mediumBlack16,
                      ),
                      value: 0),
                  // PopupMenuItem(child: Text('Setting',style: Styles.mediumBlack16,), value: 1),
                ],
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: _controller.weatherDataModel == null
              ? Container(
                  color: Colors.white,
                  child: Shimmer.fromColors(
                      baseColor: ColorsValue.lightGreyColor1,
                      highlightColor: ColorsValue.lightGreyColor,
                      child: shimmerViewInHomePage()),
                )
              : Stack(
                  children: [
                    Container(
                      padding: Dimens.edgeInsetsSymmentic20_0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          opacity: 0.8,
                          fit: BoxFit.cover,
                          image: AssetImage(
                            _controller.returnCurrectTimeImage(
                              int.parse(
                                Utility.returnTimeStameDate(
                                        _controller.weatherDataModel == null
                                            ? 16
                                            : _controller.weatherDataModel!.dt!
                                                .toInt())
                                    .toString(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      child: GetBuilder<ManageCityController>(
                        builder: (_controller) => SizedBox(
                          width: Dimens.percentWidth(1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      style: Styles.boldWhite140,
                                      text: _controller.weatherDataModel == null
                                          ? ''
                                          : _controller
                                              .weatherDataModel?.main?.temp
                                              .floor()
                                              .toString(),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                _controller.weatherDataModel == null
                                    ? ''
                                    : _controller
                                        .weatherDataModel!.weather![0].main
                                        .toString(),
                                style: Styles.mediumWhite22,
                              ),
                              Dimens.boxHeight20,
                              Text(
                                _controller.weekdayName[
                                        Utility.returnDateAndTime(_controller
                                                .weatherDataModel!.dt!
                                                .toInt())
                                            .weekday]
                                    .toString(),
                                style: Styles.mediumWhite16,
                              ),
                              Dimens.boxHeight20,
                              _controller.fiveDayWeatherResponse == null
                                  ? const CircularProgressIndicator(
                                      color: Colors.white,
                                      backgroundColor: Colors.blue,
                                    )
                                  : Container(
                                      alignment: Alignment.bottomCenter,
                                      height: Dimens.percentHeight(.15),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            _controller.todayWeather.isEmpty
                                                ? Dimens.box0
                                                : ListTile(
                                                    contentPadding:
                                                        Dimens.edgeInsets0,
                                                    leading: Text(
                                                      '${_controller.todayWeather[0].day}  -  ${_controller.todayWeather[0].mapData.weather![0].main}',
                                                      style:
                                                          Styles.mediumWhite16,
                                                    ),
                                                    trailing: Text(
                                                      '${_controller.todayWeather[0].mapData.main!.tempMax.floor().toString()}° / ${_controller.todayWeather[0].mapData.main!.tempMin.ceil().toString()}°',
                                                      style:
                                                          Styles.mediumWhite16,
                                                    ),
                                                  ),
                                            _controller.tomorrowWeather.isEmpty
                                                ? Dimens.box0
                                                : ListTile(
                                                    contentPadding:
                                                        Dimens.edgeInsets0,
                                                    leading: Text(
                                                      '${_controller.tomorrowWeather[0].day}  -  ${_controller.tomorrowWeather[0].mapData.weather![0].main}',
                                                      style:
                                                          Styles.mediumWhite16,
                                                    ),
                                                    trailing: Text(
                                                      '${_controller.tomorrowWeather[0].mapData.main!.tempMax.floor().toString()}° / ${_controller.tomorrowWeather[0].mapData.main!.tempMin.ceil().toString()}°',
                                                      style:
                                                          Styles.mediumWhite16,
                                                    ),
                                                  ),
                                          ],
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: Dimens.edgeInsets20,
                        padding: EdgeInsets.only(
                          left: Dimens.hundred,
                          right: Dimens.hundred,
                          top: Dimens.fifteen,
                          bottom: Dimens.fifteen,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius:
                              BorderRadius.circular(Dimens.twentyFive),
                        ),
                        child: InkWell(
                          onTap: () {
                            Get.to<void>(() => const FiveDayForecastPageView());
                          },
                          child: Text(
                            '5-day forecast',
                            style: Styles.whiteLight14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
        ),
      );
}

Widget shimmerViewInHomePage() => Stack(
      children: [
        SizedBox(
          height: Dimens.percentHeight(1),
          width: Dimens.percentWidth(1),
          // color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      '22',
                      style: Styles.boldWhite140,
                    ),
                    Text(
                      'Cloud',
                      style: Styles.mediumLightGrey20,
                    ),
                    Dimens.boxHeight10,
                    Text(
                      'Monday',
                      style: Styles.mediumLightGrey20,
                    ),
                    Dimens.boxHeight10,
                    Container(
                      padding: Dimens.edgeInsets20,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Monday - cloud',
                                style: Styles.mediumLightGrey16,
                              ),
                              Text(
                                'Monday - cloud',
                                style: Styles.mediumLightGrey16,
                              ),
                            ],
                          ),
                          Dimens.boxHeight20,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Monday - cloud',
                                style: Styles.mediumLightGrey16,
                              ),
                              Text(
                                'Monday - cloud',
                                style: Styles.mediumLightGrey16,
                              ),
                            ],
                          ),
                          Dimens.boxHeight20,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Monday - cloud',
                                style: Styles.mediumLightGrey16,
                              ),
                              Text(
                                'Monday - cloud',
                                style: Styles.mediumLightGrey16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: Dimens.edgeInsets20,
            padding: EdgeInsets.only(
              left: Dimens.hundred,
              right: Dimens.hundred,
              top: Dimens.fifteen,
              bottom: Dimens.fifteen,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(Dimens.twentyFive),
            ),
            child: InkWell(
              child: Text(
                '5-day forecast',
                style: Styles.whiteLight14,
              ),
            ),
          ),
        ),
      ],
    );

