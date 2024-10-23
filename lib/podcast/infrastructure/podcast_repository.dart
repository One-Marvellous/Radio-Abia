import 'dart:developer';

import 'package:audio_service/audio_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:radio_abia/core/domain/failures/radio_failure.dart';
import 'package:radio_abia/core/infrastructure/media_dto.dart';
import 'package:radio_abia/podcast/infrastructure/remote_services/podcast_remote_service.dart';

class PodcastRepository {
  final PodcastRemoteService _podcastRemoteService;
  PodcastRepository({required PodcastRemoteService podcastRemoteService})
      : _podcastRemoteService = podcastRemoteService;

  Future<Either<RadioFailure, List<MediaItem>>> fetchPodcast() async {
    try {
      final MediaListDTO podcast = await _podcastRemoteService.fetchPodcast();
      return right(
          podcast.toDomain().media.map((e) => e.toMediaItem()).toList());
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        return left(const RadioFailure.noConnection());
      }
      return left(const RadioFailure.unknown());
    } on FirebaseException catch (e) {
      log(e.code);
      return left(const RadioFailure.unknown());
    }
  }
}
