// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MediaList {
  List<Media> get media => throw _privateConstructorUsedError;

  /// Create a copy of MediaList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaListCopyWith<MediaList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaListCopyWith<$Res> {
  factory $MediaListCopyWith(MediaList value, $Res Function(MediaList) then) =
      _$MediaListCopyWithImpl<$Res, MediaList>;
  @useResult
  $Res call({List<Media> media});
}

/// @nodoc
class _$MediaListCopyWithImpl<$Res, $Val extends MediaList>
    implements $MediaListCopyWith<$Res> {
  _$MediaListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaList
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
              as List<Media>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaListImplCopyWith<$Res>
    implements $MediaListCopyWith<$Res> {
  factory _$$MediaListImplCopyWith(
          _$MediaListImpl value, $Res Function(_$MediaListImpl) then) =
      __$$MediaListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Media> media});
}

/// @nodoc
class __$$MediaListImplCopyWithImpl<$Res>
    extends _$MediaListCopyWithImpl<$Res, _$MediaListImpl>
    implements _$$MediaListImplCopyWith<$Res> {
  __$$MediaListImplCopyWithImpl(
      _$MediaListImpl _value, $Res Function(_$MediaListImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
  }) {
    return _then(_$MediaListImpl(
      null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ));
  }
}

/// @nodoc

class _$MediaListImpl extends _MediaList {
  const _$MediaListImpl(final List<Media> media)
      : _media = media,
        super._();

  final List<Media> _media;
  @override
  List<Media> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  String toString() {
    return 'MediaList(media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaListImpl &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_media));

  /// Create a copy of MediaList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaListImplCopyWith<_$MediaListImpl> get copyWith =>
      __$$MediaListImplCopyWithImpl<_$MediaListImpl>(this, _$identity);
}

abstract class _MediaList extends MediaList {
  const factory _MediaList(final List<Media> media) = _$MediaListImpl;
  const _MediaList._() : super._();

  @override
  List<Media> get media;

  /// Create a copy of MediaList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaListImplCopyWith<_$MediaListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Media {
  String get id => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get favicon => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {String id,
      String author,
      String title,
      String url,
      String favicon,
      String date,
      String time,
      String? duration});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? title = null,
    Object? url = null,
    Object? favicon = null,
    Object? date = null,
    Object? time = null,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaImplCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$MediaImplCopyWith(
          _$MediaImpl value, $Res Function(_$MediaImpl) then) =
      __$$MediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String author,
      String title,
      String url,
      String favicon,
      String date,
      String time,
      String? duration});
}

/// @nodoc
class __$$MediaImplCopyWithImpl<$Res>
    extends _$MediaCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
      _$MediaImpl _value, $Res Function(_$MediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? title = null,
    Object? url = null,
    Object? favicon = null,
    Object? date = null,
    Object? time = null,
    Object? duration = freezed,
  }) {
    return _then(_$MediaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MediaImpl extends _Media {
  const _$MediaImpl(
      {required this.id,
      required this.author,
      required this.title,
      required this.url,
      required this.favicon,
      required this.date,
      required this.time,
      this.duration})
      : super._();

  @override
  final String id;
  @override
  final String author;
  @override
  final String title;
  @override
  final String url;
  @override
  final String favicon;
  @override
  final String date;
  @override
  final String time;
  @override
  final String? duration;

  @override
  String toString() {
    return 'Media(id: $id, author: $author, title: $title, url: $url, favicon: $favicon, date: $date, time: $time, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.favicon, favicon) || other.favicon == favicon) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, author, title, url, favicon, date, time, duration);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      __$$MediaImplCopyWithImpl<_$MediaImpl>(this, _$identity);
}

abstract class _Media extends Media {
  const factory _Media(
      {required final String id,
      required final String author,
      required final String title,
      required final String url,
      required final String favicon,
      required final String date,
      required final String time,
      final String? duration}) = _$MediaImpl;
  const _Media._() : super._();

  @override
  String get id;
  @override
  String get author;
  @override
  String get title;
  @override
  String get url;
  @override
  String get favicon;
  @override
  String get date;
  @override
  String get time;
  @override
  String? get duration;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
