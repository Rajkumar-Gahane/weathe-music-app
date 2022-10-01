import 'dart:io';
import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:weather_app/app/app.dart';

/// this is music player list view page and this is showing on page in over page.....
///
class MusicPlayerLIstView extends StatefulWidget {
  const MusicPlayerLIstView({Key? key}) : super(key: key);

  @override
  _MusicPlayerLIstViewState createState() => _MusicPlayerLIstViewState();
}

class _MusicPlayerLIstViewState extends State<MusicPlayerLIstView> {
  final OnAudioQuery _audioQuery = OnAudioQuery();
  AudioPlayer? audioPlayer;

  int currentIndex = 0;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
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
    setState(() {});
  }

  Future<void> pauseAudio() async {
    await audioPlayer!.pause();
    isPlaying = false;
    setState(() {});
  }

  Future<void> stopAudio() async {
    await audioPlayer!.stop();
    isPlaying = false;
    setState(() {});
  }

  Future<void> resumeAudio() async {
    await audioPlayer!.resume();
  }

  void requestPermission() async {
    // Web platform don't support permissions methods.
    if (!kIsWeb) {
      var permissionStatus = await _audioQuery.permissionsStatus();
      if (!permissionStatus) {
        await _audioQuery.permissionsRequest();
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorsValue.blackColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Text('Music Player'),
          elevation: 1,
          actions: [const Icon(Icons.more_vert)],
        ),
        body: Container(
          padding: Dimens.edgeInsetsSymmentic20_0.copyWith(left: 10),
          child: FutureBuilder<List<SongModel>>(
            // Default values:
            future: _audioQuery.querySongs(
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
                return  Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(color: ColorsValue.lightGreyColor4,backgroundColor: ColorsValue.appSecondaryButtonColor,),
                    Dimens.boxHeight20,
                    Text('No music files found',style: Styles.mediumWhite16,),
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
                                  item.data![currentIndex].title,
                                  style: Styles.mediumWhite20,
                                  maxLines: 1,
                                ),
                                // Text('Audio Name',style: Styles.mediumWhite20,),
                                Dimens.boxHeight20,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const InkWell(
                                        // onTap: () {},
                                        child: Icon(
                                          Icons.arrow_back_ios,
                                          color: Colors.white,
                                        )),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              Dimens.hundred),
                                          color: ColorsValue.lightGreyColor3),
                                      padding: Dimens.edgeInsets8,
                                      child: InkWell(
                                          onTap: () async {
                                            if (!isPlaying) {
                                              var netFile = File(item
                                                  .data![currentIndex].data);
                                              await playAudioFromLocalStorage(
                                                  netFile.readAsBytesSync());
                                            } else {
                                              await pauseAudio();
                                            }
                                            // await stopAudio();
                                          },
                                          child: Icon(
                                            !isPlaying
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
                            currentIndex = index;
                            await stopAudio();
                            setState(() {});
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
      );
}
