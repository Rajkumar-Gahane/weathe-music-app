import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:weather_app/app/app.dart';

/// this is music player list view page and this is showing on page in over page.....
///

class MusicPlayerLIstView extends StatelessWidget {
  const MusicPlayerLIstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<AudioPlayerController>(
        builder: (_controller) => Scaffold(
          backgroundColor: ColorsValue.blackColor,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () async {
                RouteManagement.goToHome();
              },
              icon: Icon(
                Icons.adaptive.arrow_back,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: const Text('Music Player'),
            elevation: 1,
            actions: [
              const Icon(Icons.more_vert),
            ],
          ),
          body: Container(
            padding: Dimens.edgeInsetsSymmentic20_0.copyWith(left: 10),
            child: FutureBuilder<List<SongModel>>(
              // Default values:
              future: _controller.audioQuery.querySongs(
                sortType: null,
                orderType: OrderType.ASC_OR_SMALLER,
                uriType: UriType.EXTERNAL,
                ignoreCase: true,
              ),
              builder: (context, item) {
                // Loading content
                if (item.data == null) {
                  return const Center(
                      child: CircularProgressIndicator(
                    backgroundColor: ColorsValue.blueColor,
                  ));
                }

                // When you try "query" without asking for [READ] or [Library] permission
                // the plugin will return a [Empty] list.
                if (item.data!.isEmpty) {
                  return Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(
                        color: ColorsValue.lightGreyColor4,
                        backgroundColor: ColorsValue.appSecondaryButtonColor,
                      ),
                      Dimens.boxHeight20,
                      Text(
                        'No music files found',
                        style: Styles.mediumWhite16,
                      ),
                    ],
                  ));
                }

                // You can use [item.data!] direct or you can create a:
                // List<SongModel> songs = item.data!;
                return SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        // height: Dimens.percentHeight(.2),
                        child: Row(
                          children: [
                            Container(
                              height: Dimens.hundred,
                              width: Dimens.hundred,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: ColorsValue.lightGreyColor4),
                                borderRadius:
                                    BorderRadius.circular(Dimens.hundred),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(Dimens.hundred),
                                child: Image.asset(
                                  AssetConstants.musicListen,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Dimens.boxWidth10,
                            SizedBox(
                              width: Dimens.percentWidth(.6),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    item.data![_controller.currentIndex].title,
                                    style: Styles.mediumWhite20,
                                    maxLines: 1,
                                  ),
                                  // Text('Audio Name',style: Styles.mediumWhite20,),
                                  Dimens.boxHeight20,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                Dimens.hundred),
                                            color: ColorsValue.lightGreyColor3),
                                        padding: Dimens.edgeInsets8,
                                        child: InkWell(
                                            onTap: () async {
                                              if (!_controller.isPlaying) {
                                                var netFile = File(item
                                                    .data![_controller
                                                        .currentIndex]
                                                    .data);
                                                await _controller
                                                    .playAudioFromLocalStorage(
                                                        netFile
                                                            .readAsBytesSync());
                                              } else {
                                                await _controller.pauseAudio();
                                              }
                                              // await stopAudio();
                                            },
                                            child: Icon(
                                              !_controller.isPlaying
                                                  ? Icons.play_arrow
                                                  : Icons.pause,
                                              color: Colors.white,
                                              size: Dimens.thirty,
                                            )),
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Dimens.boxHeight20,
                      LinearProgressIndicator(
                          backgroundColor: Colors.orange,
                          color: ColorsValue.approvedColor,
                          minHeight: Dimens.one),
                      // Divider(color: ColorsValue.lightGreyColor4,),
                      Dimens.boxHeight20,
                      SizedBox(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: item.data!.length,
                          itemBuilder: (context, index) => ListTile(
                            onTap: () async {
                              _controller.bottomSheetOpened=true;
                                log('${item.data![index]}');
                                await Get.bottomSheet<void>(
                                  backgroundColor: Colors.transparent,
                                  BottomSheetViewWidget(filePath: '${item.data![index].data.toString()}',currentIndex: index, songName: item.data![index].displayName, duration: item.data![index].duration!,),
                                  isScrollControlled: true,
                                  // context: context,
                                  // builder: (builder) => BottomSheetViewWidget(filePath: '${item.data![index].data.toString()}',currentIndex: index, songName: item.data![index].displayName, duration: item.data![index].duration!,),
                                );
                                if(!Get.isBottomSheetOpen! && _controller.bottomSheetOpened){
                                  _controller.isPlaying=false;
                                  _controller.update();
                                  // if (!_controller.isPlaying) {
                                  //   var netFile = File(item
                                  //       .data![_controller
                                  //       .currentIndex]
                                  //       .data);
                                  //   await _controller
                                  //       .playAudioFromLocalStorage(
                                  //       netFile
                                  //           .readAsBytesSync());
                                  // } else {
                                  //   await _controller.pauseAudio();
                                  // }

                                }


                              _controller.currentIndex = index;
                              await _controller.stopAudio();
                            },
                            title: Text(
                              item.data![index].title,
                              style: Styles.mediumWhite14,
                              maxLines: 2,
                            ),
                            subtitle: Text(
                              item.data![index].artist ?? 'No Artist',
                              style: Styles.mediumLightGrey12,
                            ),
                            // This Widget will query/load image. Just add the id and type.
                            // You can use/create your own widget/method using [queryArtwork].
                            leading: QueryArtworkWidget(
                              keepOldArtwork: false,
                              nullArtworkWidget: Container(
                                padding: Dimens.edgeInsets5,
                                decoration: BoxDecoration(
                                    color: ColorsValue.whiteTableHeadingColor,
                                    borderRadius:
                                        BorderRadius.circular(Dimens.hundred),
                                    border: Border.all(
                                        color: ColorsValue.lightGreyColor3)),
                                child: ClipRRect(
                                  child: Image.asset(
                                    AssetConstants.musicLogo,
                                  ),
                                ),
                              ),
                              errorBuilder: (_, __, dynamic error) => Container(
                                child: ClipRRect(
                                  child: Image.asset(
                                    AssetConstants.musicLogo,
                                  ),
                                ),
                              ),
                              id: item.data![index].id,
                              type: ArtworkType.AUDIO,
                            ),
                          ),
                        ),
                        height: Dimens.percentHeight(1),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      );
}
