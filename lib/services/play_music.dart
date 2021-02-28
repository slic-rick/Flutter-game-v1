import 'package:assets_audio_player/assets_audio_player.dart';

class PlayMusicService {
  final assetsAudioPlayer = AssetsAudioPlayer();

  Future playAudio() async {
    try {
      print("in the playAudio method");
      await assetsAudioPlayer.open(
        Audio.network(
            "https://firebasestorage.googleapis.com/v0/b/deep-player-artists/o/SDTtcJBkGecngpG2mkOmGms3zjJ3%2FSingles%2Ftitle%20hypeSDTtcJBkGecngpG2mkOmGms3zjJ31604761407456?alt=media&token=ef140303-d027-4f1a-a403-3b05e5757fb0"),
      );
    } catch (t) {
      //mp3 unreachable
      print('An error occured $t');
    }
  }

  Future play() async {
    return await assetsAudioPlayer.play();
  }
}
