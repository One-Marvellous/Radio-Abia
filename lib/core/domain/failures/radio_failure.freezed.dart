// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RadioFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode, String? message) api,
    required TResult Function(String message) unknown,
    required TResult Function() noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? errorCode, String? message)? api,
    TResult? Function(String message)? unknown,
    TResult? Function()? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    TResult Function(String message)? unknown,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoConnection value) noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Api value)? api,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoConnection value)? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioFailureCopyWith<$Res> {
  factory $RadioFailureCopyWith(
          RadioFailure value, $Res Function(RadioFailure) then) =
      _$RadioFailureCopyWithImpl<$Res, RadioFailure>;
}

/// @nodoc
class _$RadioFailureCopyWithImpl<$Res, $Val extends RadioFailure>
    implements $RadioFailureCopyWith<$Res> {
  _$RadioFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RadioFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApiImplCopyWith<$Res> {
  factory _$$ApiImplCopyWith(_$ApiImpl value, $Res Function(_$ApiImpl) then) =
      __$$ApiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? errorCode, String? message});
}

/// @nodoc
class __$$ApiImplCopyWithImpl<$Res>
    extends _$RadioFailureCopyWithImpl<$Res, _$ApiImpl>
    implements _$$ApiImplCopyWith<$Res> {
  __$$ApiImplCopyWithImpl(_$ApiImpl _value, $Res Function(_$ApiImpl) _then)
      : super(_value, _then);

  /// Create a copy of RadioFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ApiImpl(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ApiImpl extends _Api {
  const _$ApiImpl({this.errorCode, this.message}) : super._();

  @override
  final int? errorCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'RadioFailure.api(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  /// Create a copy of RadioFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiImplCopyWith<_$ApiImpl> get copyWith =>
      __$$ApiImplCopyWithImpl<_$ApiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode, String? message) api,
    required TResult Function(String message) unknown,
    required TResult Function() noConnection,
  }) {
    return api(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? errorCode, String? message)? api,
    TResult? Function(String message)? unknown,
    TResult? Function()? noConnection,
  }) {
    return api?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    TResult Function(String message)? unknown,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return api(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Api value)? api,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoConnection value)? noConnection,
  }) {
    return api?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(this);
    }
    return orElse();
  }
}

abstract class _Api extends RadioFailure {
  const factory _Api({final int? errorCode, final String? message}) = _$ApiImpl;
  const _Api._() : super._();

  int? get errorCode;
  String? get message;

  /// Create a copy of RadioFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiImplCopyWith<_$ApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$RadioFailureCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of RadioFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownImpl extends _Unknown {
  const _$UnknownImpl(
      [this.message = "Unknown error occurred. Please try again later"])
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'RadioFailure.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RadioFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode, String? message) api,
    required TResult Function(String message) unknown,
    required TResult Function() noConnection,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? errorCode, String? message)? api,
    TResult? Function(String message)? unknown,
    TResult? Function()? noConnection,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    TResult Function(String message)? unknown,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Api value)? api,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoConnection value)? noConnection,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown extends RadioFailure {
  const factory _Unknown([final String message]) = _$UnknownImpl;
  const _Unknown._() : super._();

  String get message;

  /// Create a copy of RadioFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionImplCopyWith<$Res> {
  factory _$$NoConnectionImplCopyWith(
          _$NoConnectionImpl value, $Res Function(_$NoConnectionImpl) then) =
      __$$NoConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoConnectionImplCopyWithImpl<$Res>
    extends _$RadioFailureCopyWithImpl<$Res, _$NoConnectionImpl>
    implements _$$NoConnectionImplCopyWith<$Res> {
  __$$NoConnectionImplCopyWithImpl(
      _$NoConnectionImpl _value, $Res Function(_$NoConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RadioFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoConnectionImpl extends _NoConnection {
  const _$NoConnectionImpl() : super._();

  @override
  String toString() {
    return 'RadioFailure.noConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode, String? message) api,
    required TResult Function(String message) unknown,
    required TResult Function() noConnection,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? errorCode, String? message)? api,
    TResult? Function(String message)? unknown,
    TResult? Function()? noConnection,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    TResult Function(String message)? unknown,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Api value)? api,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoConnection value)? noConnection,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection extends RadioFailure {
  const factory _NoConnection() = _$NoConnectionImpl;
  const _NoConnection._() : super._();
}
