import 'package:freezed_annotation/freezed_annotation.dart';

part 'errors.freezed.dart';
part 'errors.g.dart';

@freezed
class Errors with _$Errors {
  const factory Errors({
    @Default([]) @JsonKey(name: 'dial_code') List<String> dialCode,
    @Default([]) List<String> phone,
  }) = _Errors;

  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);
}
