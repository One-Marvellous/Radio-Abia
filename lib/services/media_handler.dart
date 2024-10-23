import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:radio_abia/services/position_data.dart';
import 'package:rxdart/rxdart.dart';

Future<AudioHandler> initAudioService() async {
  return await AudioService.init(
    builder: () => MediaHandler(),
    config: const AudioServiceConfig(
      androidNotificationChannelId: 'com.ryanheise.myapp.channel.audio',
      androidNotificationChannelName: 'Audio playback',
      androidNotificationOngoing: true,
      androidShowNotificationBadge: true,
    ),
  );
}

// Class for handling audio playback using AudioService and Just Audio
class MediaHandler extends BaseAudioHandler with QueueHandler, SeekHandler {
  // Create an instance of the AudioPlayer class from just_audio package
  final AudioPlayer _audioPlayer = AudioPlayer();

  // Create Playlist
  final ConcatenatingAudioSource _playlist =
      ConcatenatingAudioSource(children: [], useLazyPreparation: true);

  MediaHandler() {
    loadEmptyPlaylist();
    notifyAudioHandlerAboutPlaybackEvents();
    listenForDurationChanges();
    listenForCurrentMediaIndexChanges();
    listenForSequenceStateChanges();
  }

  Future<void> loadEmptyPlaylist() async {
    try {
      await _audioPlayer.setAudioSource(_playlist);
    } catch (e) {
      debugPrint("Error: $e");
    }
  }

  Future<void> notifyAudioHandlerAboutPlaybackEvents() async {
    _audioPlayer.playbackEventStream
        .listen(_notifyAudioHandlerAboutPlaybackEvents);
  }

  Future<void> listenForDurationChanges() async {
    _audioPlayer.durationStream.listen(_listenForDurationChanges);
  }

  Future<void> listenForCurrentMediaIndexChanges() async {
    _audioPlayer.currentIndexStream.listen(_listenForCurrentMediaIndexChanges);
  }

  Future<void> listenForSequenceStateChanges() async {
    _audioPlayer.sequenceStateStream.listen(_listenForSequenceStateChanges);
  }

  Future<void> autoPlayNextSong() async {
    _audioPlayer.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) skipToNext();
    });
  }

  @override
  Future<void> addQueueItem(MediaItem mediaItem) async {
    final audioSource = _createAudioSource(mediaItem);
    await _playlist.add(audioSource);
    final newQueue = queue.value..add(mediaItem);
    queue.add(newQueue);
  }

  @override
  Future<void> addQueueItems(List<MediaItem> mediaItems) async {
    final audioSource = _createAudioSources(mediaItems);
    await _playlist.addAll(audioSource);
    final newQueue = queue.value..addAll(mediaItems);
    queue.add(newQueue);
  }

  @override
  Future<void> updateMediaItem(MediaItem mediaItem) async {
    final index = queue.value.indexWhere((item) => item.id == mediaItem.id);
    var dataArr = queue.value;
    dataArr[index] = mediaItem;
    queue.add(dataArr);
  }

  @override
  Future<void> updateQueue(List<MediaItem> queue) async {
    await _playlist.clear();
    await _playlist.addAll(_createAudioSources(queue));
  }

  // Function to create an audio source from a MediaItem
  UriAudioSource _createAudioSource(MediaItem item) {
    return AudioSource.uri(Uri.parse(item.extras!['url'] as String), tag: item);
  }

  List<UriAudioSource> _createAudioSources(List<MediaItem> mediaItems) {
    return mediaItems.map((item) => _createAudioSource(item)).toList();
  }

  // Broadcast the current playback state based on the received PlaybackEvent
  void _notifyAudioHandlerAboutPlaybackEvents(PlaybackEvent event) {
    playbackState.add(playbackState.value.copyWith(
      controls: [
        MediaControl.skipToPrevious,
        if (_audioPlayer.playing) MediaControl.pause else MediaControl.play,
        MediaControl.stop,
        MediaControl.skipToNext,
      ],
      systemActions: {
        MediaAction.seek,
        MediaAction.seekForward,
        MediaAction.seekBackward,
      },
      processingState: const {
        ProcessingState.idle: AudioProcessingState.idle,
        ProcessingState.loading: AudioProcessingState.loading,
        ProcessingState.buffering: AudioProcessingState.buffering,
        ProcessingState.ready: AudioProcessingState.ready,
        ProcessingState.completed: AudioProcessingState.completed,
      }[_audioPlayer.processingState]!,
      playing: _audioPlayer.playing,
      updatePosition: _audioPlayer.position,
      bufferedPosition: _audioPlayer.bufferedPosition,
      speed: _audioPlayer.speed,
      queueIndex: event.currentIndex,
    ));
  }

  // Listen for Duration changes

  void _listenForDurationChanges(Duration? duration) {
    var index = _audioPlayer.currentIndex;
    final newQueue = queue.value;
    if (index == null || newQueue.isEmpty || newQueue.length < index) return;
    if (_audioPlayer.shuffleModeEnabled) {
      index = _audioPlayer.shuffleIndices!.indexOf(index);
    }
    final oldMediaItem = newQueue[index];
    final newMediaItem = oldMediaItem.copyWith(duration: duration);
    newQueue[index] = newMediaItem;
    queue.add(newQueue);
    mediaItem.add(newMediaItem);
  }

  // Listen for changes in the current song index and update the media item
  void _listenForCurrentMediaIndexChanges(int? index) {
    final playlist = queue.value;
    if (index == null || playlist.isEmpty) return;
    mediaItem.add(playlist[index]);
  }

  // Listen for Sequence state changes

  void _listenForSequenceStateChanges(SequenceState? sequenceState) {
    final sequence = sequenceState?.effectiveSequence;
    if (sequence == null || sequence.isEmpty) return;
    final items = sequence.map((source) => source.tag as MediaItem);
    queue.add(items.toList());
  }

  Future<void> moveQueueItem(int currentIndex, int newIndex) async {
    await _playlist.move(currentIndex, newIndex);
  }

  Future<void> removeQueueItemIndex(int index) async {
    await _playlist.removeAt(index);
  }

  Future<void> setNewPlaylist(List<MediaItem> mediaItems, int index) async {
    if (!Platform.isAndroid) {
      await _audioPlayer.stop();
    }

    var getCount = queue.value.length;
    await _playlist.removeRange(0, getCount);
    final audioSource = _createAudioSources(mediaItems);
    await _playlist.addAll(audioSource);
    final newQueue = queue.value..addAll(mediaItems);
    queue.add(newQueue);
    await _audioPlayer.setAudioSource(_playlist,
        initialIndex: index, initialPosition: Duration.zero);
  }

  @override
  Future<void> removeQueueItemAt(int index) async {
    await _playlist.removeRange(0, index);
    final newQueue = queue.value..clear();
    queue.add(newQueue);
  }

  // Play function to start playback
  @override
  Future<void> play() => _audioPlayer.play();

  // Pause function to pause playback
  @override
  Future<void> pause() => _audioPlayer.pause();

  // Seek function to change the playback position
  @override
  Future<void> seek(Duration position) => _audioPlayer.seek(position);

  // Skip to a specific item in the queue and start playback
  @override
  Future<void> skipToQueueItem(int index) async {
    if (index < 0 || index >= queue.value.length) return;
    if (_audioPlayer.shuffleModeEnabled) {
      index = _audioPlayer.shuffleIndices![index];
    }
    await _audioPlayer.seek(Duration.zero, index: index);
    play();
  }

  @override
  Future<void> setShuffleMode(AudioServiceShuffleMode shuffleMode) async {
    if (shuffleMode == AudioServiceShuffleMode.none) {
      _audioPlayer.setShuffleModeEnabled(false);
    } else {
      _audioPlayer.shuffle();
      _audioPlayer.setShuffleModeEnabled(true);
    }
  }

  @override
  Future<void> setRepeatMode(AudioServiceRepeatMode repeatMode) async {
    switch (repeatMode) {
      case AudioServiceRepeatMode.none:
        _audioPlayer.setLoopMode(LoopMode.off);
        break;
      case AudioServiceRepeatMode.one:
        _audioPlayer.setLoopMode(LoopMode.one);
        break;
      case AudioServiceRepeatMode.group:
      case AudioServiceRepeatMode.all:
        _audioPlayer.setLoopMode(LoopMode.all);
        break;
    }
  }

  @override
  Future customAction(String name, [Map<String, dynamic>? extras]) async {
    if (name == 'dispose') {
      await _audioPlayer.dispose();
      super.stop();
    }
  }

  @override
  Future<void> stop() async {
    await _audioPlayer.stop();
    playbackState.add(playbackState.value
        .copyWith(processingState: AudioProcessingState.idle));
    return super.stop();
  }

  // Skip to the next item in the queue
  @override
  Future<void> skipToNext() => _audioPlayer.seekToNext();

  // Skip to the previous item in the queue
  @override
  Future<void> skipToPrevious() => _audioPlayer.seekToPrevious();

  Stream<PositionData> positionDataStream() =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _audioPlayer.positionStream,
          _audioPlayer.bufferedPositionStream,
          _audioPlayer.durationStream,
          (position, bufferedPosition, duration) => PositionData(
              position: position,
              bufferedPosition: bufferedPosition,
              duration: duration ?? Duration.zero));

  Future<void> addMediaToPlaylist(List<AudioSource> audioSource) async {
    await _playlist.addAll(audioSource);
  }
}
