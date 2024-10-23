import 'dart:async';
import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:radio_abia/services/page_manager.dart';
import 'package:radio_abia/services/service_locator.dart';

DateTime playerTapTime = DateTime.now();
bool get isProcessForPlay {
  return DateTime.now().difference(playerTapTime).inMilliseconds > 600;
}

Timer? debounce;

void playerPlayProcessDebounce({required List<MediaItem> songsList, required int index}) {
  debounce?.cancel();
  debounce = Timer(const Duration(milliseconds: 600), () {
    PlayerInvoke.init(songsList: songsList, index: index);
  });
}

class PlayerInvoke {
  static final pageManager = getIt<PageManager>();

  static Future<void> init({
    required List<MediaItem> songsList,
    required int index,
    bool fromMiniPlayer = false,
    bool shuffle = false,
    String? playlistBox,
  }) async {
    final List<MediaItem> finalList = songsList;
    if (shuffle) finalList.shuffle();

    if (!fromMiniPlayer) {
      if (!Platform.isAndroid) {
        await pageManager.stop();
      }

      _updateNPlay(queue: finalList, index: index);
    }
  }

  static Future<void> _updateNPlay(
      {required List<MediaItem> queue, required int index}) async {
    try {
      await pageManager.setShuffleMode(AudioServiceShuffleMode.none);
      await pageManager.adds(queue, index);
      await pageManager.playAS();
    } catch (e) {
      debugPrint("error: $e");
    }
  }
}
