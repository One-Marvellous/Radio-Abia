import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radio_abia/podcast/application/podcast_notifier.dart';
import 'package:radio_abia/podcast/infrastructure/podcast_repository.dart';
import 'package:radio_abia/podcast/infrastructure/remote_services/podcast_firebase_remote_service.dart';
import 'package:radio_abia/podcast/infrastructure/remote_services/podcast_remote_service.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final firestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final podcastRemoteServiceProvider = Provider<PodcastRemoteService>((ref) {
  return PodcastFirebaseRemoteService(firestore: ref.watch(firestoreProvider));
});

final podcastRepositoryProvider = Provider<PodcastRepository>((ref) {
  return PodcastRepository(podcastRemoteService: ref.watch(podcastRemoteServiceProvider));
});

final podcastStateNotifierProvider =
    StateNotifierProvider<PodcastStateNotifier, PodcastState>((ref) {
  return PodcastStateNotifier(
      ref.watch(podcastRepositoryProvider));
});
