import 'package:audio_service/audio_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:radio_abia/core/domain/failures/radio_failure.dart';
import 'package:radio_abia/podcast/infrastructure/podcast_repository.dart';

part 'podcast_notifier.freezed.dart';

@freezed
class PodcastState with _$PodcastState {
  const PodcastState._();
  const factory PodcastState.initial() = _Initial;
  const factory PodcastState.loading() = _Loading;
  const factory PodcastState.success(List<MediaItem> data) = _Success;
  const factory PodcastState.failure(RadioFailure failure) = _Failure;
}

class PodcastStateNotifier extends StateNotifier<PodcastState> {
  final PodcastRepository _podcastRepository;
  PodcastStateNotifier(
      PodcastRepository podcastRepository)
      : _podcastRepository = podcastRepository,
        super(const PodcastState.initial());

  Future<void> fetchPodcast() async {
    state = const PodcastState.loading();
    final failureOrData = await _podcastRepository.fetchPodcast();

    state = await failureOrData.fold((l) async => PodcastState.failure(l),
        (r) async => PodcastState.success(r));
  }
}
