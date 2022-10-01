// coverage:ignore-file
import 'package:flutter/widgets.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName,
      {Map<String, String>? queryParams}) {
    if (queryParams != null) {
      routeName = Uri(path: routeName, queryParameters: queryParams).toString();
    }
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  Future<dynamic> navigateAndReplace(String routeName,
      {Map<String, String>? queryParams}) {
    if (queryParams != null) {
      routeName = Uri(path: routeName, queryParameters: queryParams).toString();
    }
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  Future<dynamic> pushNamedAndRemove(String routeName,
      {Map<String, String>? queryParams}) {
    if (queryParams != null) {
      routeName = Uri(path: routeName, queryParameters: queryParams).toString();
    }

    return navigatorKey.currentState!.pushNamedAndRemoveUntil<void>(
        routeName, (Route<dynamic> route) => false);
  }

  void goBack() => navigatorKey.currentState!.pop();
}
