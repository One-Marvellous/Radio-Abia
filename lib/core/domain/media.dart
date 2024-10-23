import 'package:audio_service/audio_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.freezed.dart';

@freezed
class MediaList with _$MediaList {
  const MediaList._();
  const factory MediaList(List<Media> media) = _MediaList;
}

@freezed
class Media with _$Media {
  const Media._();
  const factory Media({
    required String id,
    required String author,
    required String title,
    required String url,
    required String favicon,
    required String date,
    required String time,
    String? duration,
  }) = _Media;

  MediaItem toMediaItem() {
    // TODO change id
    return MediaItem(
      id: id,
      title: title,
      artist: author,
      artUri: Uri.parse(favicon),
      extras: {
        'url': url,
        'date':date,
        'time':time,
        'duration': duration ?? ''
      },
    );
  }
}
