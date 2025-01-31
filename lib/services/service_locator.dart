import 'package:audio_service/audio_service.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_abia/services/media_handler.dart';
import 'package:radio_abia/services/page_manager.dart';

GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  getIt.registerSingleton<AudioHandler>(await initAudioService());
  getIt.registerLazySingleton<PageManager>(() => PageManager());
}
