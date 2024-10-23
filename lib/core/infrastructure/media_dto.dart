import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:radio_abia/core/domain/media.dart';

part 'media_dto.freezed.dart';
part 'media_dto.g.dart';

@freezed
class MediaListDTO with _$MediaListDTO {
  const MediaListDTO._();
  const factory MediaListDTO(List<MediaDTO> media) = _MediaListDTO;

  factory MediaListDTO.fromJson(Map<String, dynamic> json) =>
      _$MediaListDTOFromJson(json);

  factory MediaListDTO.fromDomain(MediaList _) {
    return MediaListDTO(_.media.map((e) => MediaDTO.fromDomain(e)).toList());
  }

  MediaList toDomain() {
    return MediaList(media.map((e) => e.toDomain()).toList());
  }
}

@freezed
class MediaDTO with _$MediaDTO {
  const MediaDTO._();
  const factory MediaDTO({
    required String author,
    required String title,
    required String url,
    required String favicon,
    // ignore: invalid_annotation_target
    @JsonKey(fromJson: _dateTimeFromJson, name: 'timeStamp')
    required DateTime dateTime,
  }) = _MediaDTO;

  factory MediaDTO.fromJson(Map<String, dynamic> json) =>
      _$MediaDTOFromJson(json);

  factory MediaDTO.fromDomain(Media _) {
    return MediaDTO(
      author: _.author,
      title: _.title,
      url: _.url,
      favicon: _.favicon,
      dateTime: DateTime.now(),
    );
  }

  Media toDomain() {
    return Media(
        id: url,
        author: author,
        title: title,
        url: url,
        favicon: favicon,
        date: toDate(dateTime),
        time: toTime(dateTime),
        duration: "unknown");
  }

  String getDaySuffix(int day) {
    if (day >= 11 && day <= 13) {
      return 'th';
    }
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  String toDate(DateTime dateTime) {
    // DateTime dateTime = timestamp.toDate();
    // Format the DateTime
    String formattedDate = DateFormat('MMM. d').format(dateTime);
    String daySuffix = getDaySuffix(dateTime.day);
    return '$formattedDate$daySuffix, ${dateTime.year}';
  }

  String toTime(DateTime dateTime) {
    // DateTime dateTime = timestamp.toDate();
    String formattedTime = DateFormat('hh:mma').format(dateTime);
    return formattedTime;
  }
}

DateTime _dateTimeFromJson(Object? json) {
  return (json as Timestamp).toDate();
}
