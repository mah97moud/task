import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class FailureDio with _$FailureDio {
  const factory FailureDio({
    @Default(-1) int statusCode,
    @Default('') String message,
  }) = _FailureDio;
}
