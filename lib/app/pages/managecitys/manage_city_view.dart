import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/app/app.dart';

class ManageCityPageView extends StatelessWidget {
  const ManageCityPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<ManageCityController>(
      builder: (_controller) => Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              backgroundColor: Colors.white,
              title: Text(
                'Manage cities'.tr,
                style: Styles.mediumBlack20,
              ),
              leading: InkWell(
                onTap: () async {
                  await Get.to<void>(() => const WeatherHomeView());
                  // RouteManagement.goToHome();
                },
                child: Icon(
                  Icons.adaptive.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            body: SingleChildScrollView(
              padding:
                  EdgeInsets.only(left: Dimens.fifteen, right: Dimens.fifteen),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to<void>(() => const SearchCityPageView());
                    },
                    child: Container(
                      height: Dimens.fourty + Dimens.two,
                      width: Dimens.percentWidth(1),
                      decoration: BoxDecoration(
                          color: ColorsValue.lightGreyColor4,
                          borderRadius: BorderRadius.circular(Dimens.twenty)),
                      child: Row(
                        children: [
                          Dimens.boxWidth15,
                          const Icon(
                            Icons.search,
                            color: ColorsValue.lightGreyColor2,
                          ),
                          Dimens.boxWidth15,
                          Text(
                            'Enter Location',
                            style: Styles.mediumGrey14,
                          )
                        ],
                      ),
                    ),
                  ),
                  Dimens.boxHeight15,
                  SizedBox(
                    height: Dimens.percentHeight(1),
                    width: Dimens.percentWidth(1),
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics:const BouncingScrollPhysics(),
                      itemCount: 1,
                      itemBuilder: (BuildContext context, index) => Container(
                          padding: Dimens.edgeInsets15.copyWith(
                              top: Dimens.twenty, bottom: Dimens.twenty),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ColorsValue.primaryColor.withOpacity(0.8),
                            border: Border.all(color: ColorsValue.primaryColor),
                            borderRadius: BorderRadius.circular(Dimens.ten)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Banglore',
                                    style: Styles.mediumWhite14.copyWith(
                                        fontSize: Dimens.fifteen,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Dimens.boxHeight5,
                                  Text(
                                    'Max-Min (23/24)',
                                    style: Styles.mediumBlack14.copyWith(color: Colors.white),
                                  )
                                ],
                              ),
                              Text(
                                '35°',
                                style: Styles.mediumWhite24
                                    .copyWith(fontSize: Dimens.thirtyFive),
                              )
                            ],
                          )),
                      separatorBuilder: (BuildContext context, int index) =>
                          Dimens.boxHeight8,
                    ),
                  ),
                ],
              ),
            ),
          ));
}
