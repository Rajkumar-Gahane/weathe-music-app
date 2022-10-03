import 'package:get/get.dart';
import 'package:weather_app/app/app.dart';
abstract class RouteManagement {
  static void goToHome() {
    Get.offAllNamed<void>(Routes.manageCityScreen);
  }

  static void goToAudioPlayer() {
    Get.offAllNamed<void>(Routes.musicPlayerScreen);
  }
}