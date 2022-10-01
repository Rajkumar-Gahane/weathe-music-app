import 'package:get/get.dart';

import 'package:weather_app/app/app.dart';

class SplashController extends GetxController {
  SplashController();

  /// method to navigate [] or direct to HomeView.
  void navigateToHome() async {
    await Future.delayed(
      const Duration(seconds: 5),
      RouteManagement.goToHome
    );
  }

  @override
  void onInit() {
    navigateToHome();
    super.onInit();
  }
}