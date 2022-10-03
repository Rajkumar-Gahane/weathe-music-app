import 'package:get/get.dart';
import 'package:weather_app/app/app.dart';
part 'app_routes.dart';

class AppPages {
  static var transitionDuration = const Duration(
    milliseconds: 250,
  );
  static const initial = Routes.splashScreen;
  static final pages = <GetPage>[
    GetPage<SplashView>(
      name: _Paths.splashScreen,
      transitionDuration: transitionDuration,
      page: SplashView.new,
      binding: SplashBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<WeatherHomeView>(
      name: _Paths.manageCityScreen,
      transitionDuration: transitionDuration,
      page: WeatherHomeView.new,
      binding: ManageCityBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<MusicPlayerLIstView>(
      name: _Paths.musicPlayerScreen,
      transitionDuration: transitionDuration,
      page: MusicPlayerLIstView.new,
      binding: AudioPlayerBinding(),
      transition: Transition.downToUp,
    ),
  ];
  static var authPages = <GetPage>[
    // SplashView

  ];
}