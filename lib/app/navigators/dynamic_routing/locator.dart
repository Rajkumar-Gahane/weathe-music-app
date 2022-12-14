import 'package:get_it/get_it.dart';
import 'package:weather_app/app/navigators/dynamic_routing/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(NavigationService.new);
}
