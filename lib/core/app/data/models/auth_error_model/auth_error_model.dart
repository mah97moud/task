import 'package:freezed_annotation/freezed_annotation.dart';

import 'errors.dart';

part 'auth_error_model.freezed.dart';
part 'auth_error_model.g.dart';

@freezed
class AuthErrorModel with _$AuthErrorModel {
  const factory AuthErrorModel({
    @Default('') String message,
    @Default(ErrorsModel()) ErrorsModel errors,
  }) = _AuthErrorModel;

  factory AuthErrorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthErrorModelFromJson(json);
}
