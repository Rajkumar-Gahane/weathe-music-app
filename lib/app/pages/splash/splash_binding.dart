import 'package:get/get.dart';
import 'package:weather_app/app/pages/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      SplashController.new,
    );
  }
}