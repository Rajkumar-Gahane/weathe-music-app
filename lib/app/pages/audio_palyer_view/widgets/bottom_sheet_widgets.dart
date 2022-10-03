import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/app/app.dart';

class BottomSheetViewWidget extends StatelessWidget {
  const BottomSheetViewWidget(
      {Key? key,
      this.currentIndex = 0,
      required this.filePath,
      required this.songName,
      required this.duration})
      : super(key: key);
  final int currentIndex;
  final String? filePath;
  final String songName;
  final int duration;

  @override
  Widget build(BuildContext context) => GetBuilder<AudioPlayerController>(
        builder: (_controller) => Container(
          padding: Dimens.edgeInsetsSymmentic20_0,
          height: Dimens.percentHeight(1),
          width: Dimens.percentWidth(1),
          color: Colors.black.withOpacity(.8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: Dimens.percentHeight(.4),
                width: Dimens.percentWidth(1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.hundred)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Dimens.hundred),
                  child: Image.asset(
                    AssetConstants.musicListen,
                    height: Dimens.percentHeight(.5),
                    width: Dimens.percentWidth(1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Dimens.boxHeight35,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Dimens.percentWidth(.6),
                    child: Text(
                      maxLines: 1,
                      songName,
                      style: Styles.mediumWhite20,
                    ),
                  ),
                  const InkWell(
                    child: Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              Dimens.boxHeight30,
              const LinearProgressIndicator(
                backgroundColor: ColorsValue.lightGreyColor2,
                color: Colors.white,
                value: .2,
              ),
              Dimens.boxHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0:0',
                    style: Styles.mediumWhite14,
                  ),
                  Text(
                    '${(duration / 60000).toString().substring(0, 4).toString().replaceAll('.', ':')}',
                    style: Styles.mediumWhite14,
                  ),
                ],
              ),
              Dimens.boxHeight40,
              SizedBox(
                width: Dimens.percentWidth(1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.skip_previous,
                      color: Colors.white,
                      size: Dimens.thirtyFive,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimens.hundred),
                        color: Colors.white,
                      ),
                      padding: Dimens.edgeInsets10,
                      child: InkWell(
                        onTap: () async {
                          if (!_controller.isPlaying) {
                            var netFile = File(filePath!);
                            await _controller.playAudioFromLocalStorage(
                                netFile.readAsBytesSync());
                          } else {
                            await _controller.pauseAudio();
                          }
                        },
                        child: Icon(
                          !_controller.isPlaying
                              ? Icons.play_arrow
                              : Icons.pause,
                          color: Colors.black,
                          size: Dimens.fourty,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.skip_next,
                      color: Colors.white,
                      size: Dimens.thirtyFive,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
