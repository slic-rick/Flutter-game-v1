import 'package:nust_game/services/play_music.dart';
import 'package:stacked/stacked.dart';

import '../locator.dart';

String playAudio = "PlayAudio";
String playMusic = "Play";

class StartScreenVm extends BaseViewModel {
  final PlayMusicService _playMusicService = locator<PlayMusicService>();
  Future startPlayingMusic() async {
    print("in the startPlayingMusic method");
    var playMusic = await runBusyFuture(_playMusicService.playAudio(),
        busyObject: playAudio);
    print("return from playMusic service $playMusic");
    await play();
    return playMusic;
  }

  Future play() async {
    var play =
        await runBusyFuture(_playMusicService.play(), busyObject: playMusic);
    return play;
  }
}
