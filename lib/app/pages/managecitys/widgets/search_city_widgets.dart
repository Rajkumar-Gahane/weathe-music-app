import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/device/device.dart';

/// this is search popular city
class SearchCityPageView extends StatelessWidget {
  const SearchCityPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<ManageCityController>(
        builder: (_controller) => Scaffold(
          // extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            titleSpacing: 0,
            leadingWidth: Dimens.zero,
            title: Container(
              width: Dimens.percentWidth(1),
              margin:
                  const EdgeInsets.only(top: 10, left: 10, bottom: 0, right: 5),
              child: TextFormField(
                onChanged: (value) {
                  _controller.onItemChange(value);
                  _controller.update();
                },
                controller: _controller.searchCityTextEditingController,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.black),
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorsValue.lightGreyColor4, width: Dimens.one),
                    borderRadius: BorderRadius.circular(Dimens.thirty),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorsValue.lightGreyColor4, width: Dimens.one),
                    borderRadius: BorderRadius.circular(Dimens.thirty),
                  ),
                  contentPadding: Dimens.edgeInsets12,
                  border: OutlineInputBorder(
                    gapPadding: 2,
                    borderSide: BorderSide(
                        color: ColorsValue.lightGreyColor4, width: Dimens.one),
                    borderRadius: BorderRadius.circular(Dimens.thirty),
                  ),
                  focusColor: ColorsValue.greenLightColor,
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 2,
                    borderSide: BorderSide(
                        color: ColorsValue.lightGreyColor4, width: Dimens.one),
                    borderRadius: BorderRadius.circular(Dimens.thirty),
                  ),
                  hintText: 'Search Popular city',
                  filled: true,
                  fillColor: ColorsValue.lightGreyColor4,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: ColorsValue.lightGreyColor3,
                  ),
                  suffixIcon: _controller.searchCityTextEditingController.text.isNotEmpty ? InkWell(
                    onTap: (){
                      _controller.searchCityTextEditingController.text = '';
                      _controller.update();
                    },
                    child: Container(
                        child: const Icon(Icons.close_outlined,color: ColorsValue.lightGreyColor2,)),
                  ) : Dimens.box0,
                  hintStyle:
                      const TextStyle(color: ColorsValue.lightGreyColor2),
                ),
              ),
            ),
            actions: [
              Center(
                child: InkWell(
                  onTap: () {
                    Get.back<void>();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Text(
                      'Cancel',
                      style: Styles.mediumBlue14,
                    ),
                  ),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            padding: Dimens.edgeInsetsSymmentic20_0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Dimens.boxHeight20,
                Text(
                  'Popular cities',
                  style: Styles.mediumLightGrey14,
                ),
                Dimens.boxHeight15,
                _controller.searchCityTextEditingController.text.isNotEmpty
                    ? SizedBox(
                        height: Dimens.percentHeight(1),
                        width: Dimens.percentWidth(1),
                        child: ListView.builder(
                          itemBuilder: (BuildContext context, index) =>
                              Container(
                            child: _controller.cloneOfCountryList.isEmpty
                                ? Text(
                                    'Data Not found',
                                    style: Styles.errorStyle,
                                  )
                                : ListTile(
                                    contentPadding: Dimens.edgeInsets0,
                                    title: Text(
                                        _controller.cloneOfCountryList[index]),
                                    trailing: InkWell(
                                      onTap: () async {
                                        _controller
                                            .searchCityTextEditingController
                                            .text = '';
                                        var data = await _controller
                                            .getWeatherResponse(
                                                cityName: _controller
                                                    .cloneOfCountryList[index]);
                                        if (data != null) {
                                          Get.find<DeviceRepository>()
                                              .getStringValue(_controller
                                                  .cloneOfCountryList[index]);
                                          await Get.to<void>(
                                            () => ShowWeatherAndAdd(
                                              weatherDataModel: data,
                                            ),
                                          );
                                        }
                                        _controller.update();
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        color: ColorsValue.lightGreyColor2,
                                      ),
                                    ),
                                  ),
                          ),
                          itemCount: _controller.cloneOfCountryList.length,
                        ),
                      )
                    : Wrap(
                        runSpacing: Dimens.ten,
                        spacing: Dimens.twenty,
                        children: List.generate(
                          _controller.localCityName.length,
                          (index) => Container(
                            padding: Dimens.edgeInsets12,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimens.twenty),
                                color: ColorsValue.lightGreyColor4),
                            child: InkWell(
                              onTap: () async {
                                var data = await _controller.getWeatherResponse(
                                    cityName: index == 0
                                        ? _controller.address
                                        : _controller.localCityName[index]);
                                if (data != null) {
                                  Get.find<DeviceRepository>().getStringValue(
                                      _controller.localCityName[index]);
                                  await Get.to<void>(() => ShowWeatherAndAdd(
                                        weatherDataModel: data,
                                      ));
                                }
                                // print(_controller.localCityName[index]);
                              },
                              child: index == 0
                                  ? Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          '${_controller.localCityName[index]}',
                                          style: Styles.mediumBlue14,
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.blue,
                                          size: Dimens.fifteen,
                                        )
                                      ],
                                    )
                                  : Text(
                                      '${_controller.localCityName[index]}',
                                      style: Styles.mediumBlack14,
                                    ),
                            ),
                          ),
                        ),
                      )
              ],
            ),
          ),
        ),
      );
}
