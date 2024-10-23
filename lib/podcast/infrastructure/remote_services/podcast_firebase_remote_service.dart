import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:radio_abia/core/infrastructure/media_dto.dart';
import 'package:radio_abia/podcast/infrastructure/remote_services/podcast_remote_service.dart';

class PodcastFirebaseRemoteService implements PodcastRemoteService {
  final FirebaseFirestore _firestore;

  PodcastFirebaseRemoteService({required FirebaseFirestore firestore})
      : _firestore = firestore;

  @override
  Future<MediaListDTO> fetchPodcast() async {
    List<MediaDTO> media = [];

    try {
      var querySnapshot =
          await _podcast.orderBy('timeStamp', descending: true).get();
      for (var doc in querySnapshot.docs) {
        log(doc.data().toString());
        media.add(MediaDTO.fromJson(doc.data() as Map<String, dynamic>));
      }
      return MediaListDTO(media);
    } on FirebaseException catch (e) {
      log("error: $e");
      rethrow;
    }
  }

  CollectionReference get _podcast => _firestore.collection('podcast');
}
