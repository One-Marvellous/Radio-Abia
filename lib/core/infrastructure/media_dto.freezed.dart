// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaListDTO _$MediaListDTOFromJson(Map<String, dynamic> json) {
  return _MediaListDTO.fromJson(json);
}

/// @nodoc
mixin _$MediaListDTO {
  List<MediaDTO> get media => throw _privateConstructorUsedError;

  /// Serializes this MediaListDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaListDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaListDTOCopyWith<MediaListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaListDTOCopyWith<$Res> {
  factory $MediaListDTOCopyWith(
          MediaListDTO value, $Res Function(MediaListDTO) then) =
      _$MediaListDTOCopyWithImpl<$Res, MediaListDTO>;
  @useResult
  $Res call({List<MediaDTO> media});
}

/// @nodoc
class _$MediaListDTOCopyWithImpl<$Res, $Val extends MediaListDTO>
    implements $MediaListDTOCopyWith<$Res> {
  _$MediaListDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaListDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_value.copyWith(
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaListDTOImplCopyWith<$Res>
    implements $MediaListDTOCopyWith<$Res> {
  factory _$$MediaListDTOImplCopyWith(
          _$MediaListDTOImpl value, $Res Function(_$MediaListDTOImpl) then) =
      __$$MediaListDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MediaDTO> media});
}

/// @nodoc
class __$$MediaListDTOImplCopyWithImpl<$Res>
    extends _$MediaListDTOCopyWithImpl<$Res, _$MediaListDTOImpl>
    implements _$$MediaListDTOImplCopyWith<$Res> {
  __$$MediaListDTOImplCopyWithImpl(
      _$MediaListDTOImpl _value, $Res Function(_$MediaListDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaListDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_$MediaListDTOImpl(
      null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaListDTOImpl extends _MediaListDTO {
  const _$MediaListDTOImpl(final List<MediaDTO> media)
      : _media = media,
        super._();

  factory _$MediaListDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaListDTOImplFromJson(json);

  final List<MediaDTO> _media;
  @override
  List<MediaDTO> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  String toString() {
    return 'MediaListDTO(media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaListDTOImpl &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_media));

  /// Create a copy of MediaListDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaListDTOImplCopyWith<_$MediaListDTOImpl> get copyWith =>
      __$$MediaListDTOImplCopyWithImpl<_$MediaListDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaListDTOImplToJson(
      this,
    );
  }
}

abstract class _MediaListDTO extends MediaListDTO {
  const factory _MediaListDTO(final List<MediaDTO> media) = _$MediaListDTOImpl;
  const _MediaListDTO._() : super._();

  factory _MediaListDTO.fromJson(Map<String, dynamic> json) =
      _$MediaListDTOImpl.fromJson;

  @override
  List<MediaDTO> get media;

  /// Create a copy of MediaListDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaListDTOImplCopyWith<_$MediaListDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaDTO _$MediaDTOFromJson(Map<String, dynamic> json) {
  return _MediaDTO.fromJson(json);
}

/// @nodoc
mixin _$MediaDTO {
  String get author => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get favicon => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateTimeFromJson, name: 'timeStamp')
  DateTime get dateTime => throw _privateConstructorUsedError;

  /// Serializes this MediaDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaDTOCopyWith<MediaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaDTOCopyWith<$Res> {
  factory $MediaDTOCopyWith(MediaDTO value, $Res Function(MediaDTO) then) =
      _$MediaDTOCopyWithImpl<$Res, MediaDTO>;
  @useResult
  $Res call(
      {String author,
      String title,
      String url,
      String favicon,
      @JsonKey(fromJson: _dateTimeFromJson, name: 'timeStamp')
      DateTime dateTime});
}

/// @nodoc
class _$MediaDTOCopyWithImpl<$Res, $Val extends MediaDTO>
    implements $MediaDTOCopyWith<$Res> {
  _$MediaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? title = null,
    Object? url = null,
    Object? favicon = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      favicon: null == favicon
          ? _value.favicon
          : favicon // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaDTOImplCopyWith<$Res>
    implements $MediaDTOCopyWith<$Res> {
  factory _$$MediaDTOImplCopyWith(
          _$MediaDTOImpl value, $Res Function(_$MediaDTOImpl) then) =
      __$$MediaDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String author,
      String title,
      String url,
      String favicon,
      @JsonKey(fromJson: _dateTimeFromJson, name: 'timeStamp')
      DateTime dateTime});
}

/// @nodoc
class __$$MediaDTOImplCopyWithImpl<$Res>
    extends _$MediaDTOCopyWithImpl<$Res, _$MediaDTOImpl>
    implements _$$MediaDTOImplCopyWith<$Res> {
  __$$MediaDTOImplCopyWithImpl(
      _$MediaDTOImpl _value, $Res Function(_$MediaDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? title = null,
    Object? url = null,
    Object? favicon = null,
    Object? dateTime = null,
  }) {
    return _then(_$MediaDTOImpl(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      favicon: null == favicon
          ? _value.favicon
          : favicon // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaDTOImpl extends _MediaDTO {
  const _$MediaDTOImpl(
      {required this.author,
      required this.title,
      required this.url,
      required this.favicon,
      @JsonKey(fromJson: _dateTimeFromJson, name: 'timeStamp')
      required this.dateTime})
      : super._();

  factory _$MediaDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaDTOImplFromJson(json);

  @override
  final String author;
  @override
  final String title;
  @override
  final String url;
  @override
  final String favicon;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, name: 'timeStamp')
  final DateTime dateTime;

  @override
  String toString() {
    return 'MediaDTO(author: $author, title: $title, url: $url, favicon: $favicon, dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaDTOImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.favicon, favicon) || other.favicon == favicon) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, author, title, url, favicon, dateTime);

  /// Create a copy of MediaDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaDTOImplCopyWith<_$MediaDTOImpl> get copyWith =>
      __$$MediaDTOImplCopyWithImpl<_$MediaDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaDTOImplToJson(
      this,
    );
  }
}

abstract class _MediaDTO extends MediaDTO {
  const factory _MediaDTO(
      {required final String author,
      required final String title,
      required final String url,
      required final String favicon,
      @JsonKey(fromJson: _dateTimeFromJson, name: 'timeStamp')
      required final DateTime dateTime}) = _$MediaDTOImpl;
  const _MediaDTO._() : super._();

  factory _MediaDTO.fromJson(Map<String, dynamic> json) =
      _$MediaDTOImpl.fromJson;

  @override
  String get author;
  @override
  String get title;
  @override
  String get url;
  @override
  String get favicon;
  @override
  @JsonKey(fromJson: _dateTimeFromJson, name: 'timeStamp')
  DateTime get dateTime;

  /// Create a copy of MediaDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaDTOImplCopyWith<_$MediaDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
