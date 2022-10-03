import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class AudioPlayerController extends GetxController {
  final OnAudioQuery audioQuery = OnAudioQuery();
  AudioPlayer? audioPlayer;

  int currentIndex = 0;
  bool isPlaying = false;
  @override
  void onInit() {
    super.onInit();
    requestPermission();
    audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    audioPlayer!.dispose();
    super.dispose();
    //...
  }

  Future<void> playAudioFromLocalStorage(Uint8List path) async {
    await audioPlayer!.play(BytesSource(path));
    isPlaying = true;
    update();
  }

  bool bottomSheetOpened=false;

  Future<void> pauseAudio() async {
    await audioPlayer!.pause();
    isPlaying = false;
    update();
  }

  Future<void> stopAudio() async {
    await audioPlayer!.stop();
    isPlaying = false;
    update();
  }

  Future<void> resumeAudio() async {
    await audioPlayer!.resume();
  }


  void requestPermission() async {
    // Web platform don't support permissions methods.
    if (!kIsWeb) {
      var permissionStatus = await audioQuery.permissionsStatus();
      if (!permissionStatus) {
        await audioQuery.permissionsRequest();
      }
      update();
    }
  }
}
