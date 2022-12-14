import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:weather_app/app/app.dart';

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
    seekToSec(23232);
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

  bool bottomSheetOpened = false;

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

  void seekToSec(int sec) {
    var newPos = Duration(seconds: sec);
    audioPlayer!.seek(newPos);
  }

  Duration position = const Duration();
  Duration musicLen = const Duration();

  Widget slider() => Slider.adaptive(
    activeColor: Colors.white,
        max: musicLen.inSeconds.toDouble(),
        inactiveColor: ColorsValue.lightGreyColor3,
        value: position.inSeconds.toDouble(),
        onChanged: (value) {
          seekToSec(value.toInt());
        },
      );
}
