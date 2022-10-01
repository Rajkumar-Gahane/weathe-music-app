import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/app/app.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<SplashController>(
        builder: (_controller) => Scaffold(
          body: Container(
            decoration: BoxDecoration(
              color: Get.theme.colorScheme.background,
              // color: Colors.blue,
              // image: DecorationImage(
              //   image: AssetImage(AssetConstants.bg_3),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    AssetConstants.appLogo,
                  ),
                ),
                // const Spacer(),
                Column(
                  children: [
                    const CircularProgressIndicator(backgroundColor: Colors.white,color: Colors.blue,),
                    Dimens.boxHeight10,
                    Text(
                      'Weather',
                      style: Styles.boldWhite32,
                    ),
                    Dimens.boxHeight5,
                    Text(
                      'You quick weather report',
                      style: Styles.mediumWhite18,
                    ),
                    // LinearProgressIndicator()
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
