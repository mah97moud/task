import 'package:freezed_annotation/freezed_annotation.dart';

part 'errors.freezed.dart';
part 'errors.g.dart';

@freezed
class ErrorsModel with _$ErrorsModel {
  const factory ErrorsModel({
    @Default([]) @JsonKey(name: 'dial_code') List<String> dialCode,
    @Default([]) List<String> phone,
  }) = _ErrorsModel;

  factory ErrorsModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorsModelFromJson(json);
}
