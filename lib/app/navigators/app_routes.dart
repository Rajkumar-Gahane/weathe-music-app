 // coverage:ignore_file
  part of 'app_pages.dart';

  /// A chunks of routes and the path names which will be used to create
  /// routes in [AppPages].
  /// Will be ignored for test since all are static values and would not change.

  abstract class Routes {
    static const splashScreen = _Paths.splashScreen;
    static const manageCityScreen = _Paths.manageCityScreen;
  }

abstract class _Paths {
  static const splashScreen = '/splash-screen';
  static const manageCityScreen = '/manage-city';
}