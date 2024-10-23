import 'package:freezed_annotation/freezed_annotation.dart';

part 'radio_failure.freezed.dart';
@freezed
class RadioFailure with _$RadioFailure {
  const RadioFailure._();
  const factory RadioFailure.api({
    int? errorCode,
    String? message,
  }) = _Api;

  const factory RadioFailure.unknown(
      [@Default("Unknown error occurred. Please try again later")
      String message]) = _Unknown;

      const factory RadioFailure.noConnection() = _NoConnection;
}