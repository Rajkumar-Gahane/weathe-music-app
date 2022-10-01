import 'package:get/get.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/domain/domain.dart';

class ManageCityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ManageCityController(
        Get.put(
          ManageCityPresenter(
            Get.put(
              AuthUseCase(
                Get.find(),
              ),
            ),
          ),
        ),
      ),
      fenix: true
    );
  }
}
