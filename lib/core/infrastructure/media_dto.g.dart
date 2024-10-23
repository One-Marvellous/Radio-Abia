// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaListDTOImpl _$$MediaListDTOImplFromJson(Map<String, dynamic> json) =>
    _$MediaListDTOImpl(
      (json['media'] as List<dynamic>)
          .map((e) => MediaDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MediaListDTOImplToJson(_$MediaListDTOImpl instance) =>
    <String, dynamic>{
      'media': instance.media.map((e) => e.toJson()).toList(),
    };

_$MediaDTOImpl _$$MediaDTOImplFromJson(Map<String, dynamic> json) =>
    _$MediaDTOImpl(
      author: json['author'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      favicon: json['favicon'] as String,
      dateTime: _dateTimeFromJson(json['timeStamp']),
    );

Map<String, dynamic> _$$MediaDTOImplToJson(_$MediaDTOImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'url': instance.url,
      'favicon': instance.favicon,
      'timeStamp': instance.dateTime.toIso8601String(),
    };
