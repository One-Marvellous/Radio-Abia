import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_data.freezed.dart';

@freezed
class PositionData with _$PositionData {
  const PositionData._();
  const factory PositionData({
    required Duration position,
    required Duration bufferedPosition,
    required Duration duration,
  }) = _PositionData;
}
