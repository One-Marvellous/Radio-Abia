// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PositionData {
  Duration get position => throw _privateConstructorUsedError;
  Duration get bufferedPosition => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionDataCopyWith<PositionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionDataCopyWith<$Res> {
  factory $PositionDataCopyWith(
          PositionData value, $Res Function(PositionData) then) =
      _$PositionDataCopyWithImpl<$Res, PositionData>;
  @useResult
  $Res call({Duration position, Duration bufferedPosition, Duration duration});
}

/// @nodoc
class _$PositionDataCopyWithImpl<$Res, $Val extends PositionData>
    implements $PositionDataCopyWith<$Res> {
  _$PositionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? bufferedPosition = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      bufferedPosition: null == bufferedPosition
          ? _value.bufferedPosition
          : bufferedPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionDataImplCopyWith<$Res>
    implements $PositionDataCopyWith<$Res> {
  factory _$$PositionDataImplCopyWith(
          _$PositionDataImpl value, $Res Function(_$PositionDataImpl) then) =
      __$$PositionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration position, Duration bufferedPosition, Duration duration});
}

/// @nodoc
class __$$PositionDataImplCopyWithImpl<$Res>
    extends _$PositionDataCopyWithImpl<$Res, _$PositionDataImpl>
    implements _$$PositionDataImplCopyWith<$Res> {
  __$$PositionDataImplCopyWithImpl(
      _$PositionDataImpl _value, $Res Function(_$PositionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? bufferedPosition = null,
    Object? duration = null,
  }) {
    return _then(_$PositionDataImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      bufferedPosition: null == bufferedPosition
          ? _value.bufferedPosition
          : bufferedPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$PositionDataImpl extends _PositionData {
  const _$PositionDataImpl(
      {required this.position,
      required this.bufferedPosition,
      required this.duration})
      : super._();

  @override
  final Duration position;
  @override
  final Duration bufferedPosition;
  @override
  final Duration duration;

  @override
  String toString() {
    return 'PositionData(position: $position, bufferedPosition: $bufferedPosition, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionDataImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.bufferedPosition, bufferedPosition) ||
                other.bufferedPosition == bufferedPosition) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, position, bufferedPosition, duration);

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionDataImplCopyWith<_$PositionDataImpl> get copyWith =>
      __$$PositionDataImplCopyWithImpl<_$PositionDataImpl>(this, _$identity);
}

abstract class _PositionData extends PositionData {
  const factory _PositionData(
      {required final Duration position,
      required final Duration bufferedPosition,
      required final Duration duration}) = _$PositionDataImpl;
  const _PositionData._() : super._();

  @override
  Duration get position;
  @override
  Duration get bufferedPosition;
  @override
  Duration get duration;

  /// Create a copy of PositionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionDataImplCopyWith<_$PositionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
