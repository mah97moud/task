import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  factory RegisterModel({
    @Default('') String message,
    @Default(200) int status,
    @Default(0) int otp,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}
