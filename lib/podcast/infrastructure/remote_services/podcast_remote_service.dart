import 'package:radio_abia/core/infrastructure/media_dto.dart';

abstract interface class PodcastRemoteService {
  Future<MediaListDTO> fetchPodcast();
}
