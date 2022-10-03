import 'package:get/get.dart';
import 'package:weather_app/app/app.dart';

class AudioPlayerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AudioPlayerController>(AudioPlayerController.new,fenix: true);
  }

}