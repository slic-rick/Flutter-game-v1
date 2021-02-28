import 'package:get_it/get_it.dart';
import 'package:nust_game/services/play_music.dart';

GetIt locator = GetIt.instance;

// for locating all the services in app
void setupLocator() {
  locator.registerLazySingleton(
    () => PlayMusicService(),
  );
}
