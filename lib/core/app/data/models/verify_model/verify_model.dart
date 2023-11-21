import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_model.freezed.dart';
part 'verify_model.g.dart';

@freezed
class VerifyModel with _$VerifyModel {
  factory VerifyModel({
    String? message,
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'token_type') String? tokenType,
    int? status,
  }) = _VerifyModel;

  factory VerifyModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyModelFromJson(json);
}
