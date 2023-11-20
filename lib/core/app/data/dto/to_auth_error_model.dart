import 'package:task/core/app/data/models/auth_error_model/auth_error_model.dart';
import 'package:task/core/app/data/responses/auth_error/auth_error.dart';

extension AuthErrorEx on AuthError {
  AuthErrorModel get toAuthErrorModel => AuthErrorModel.fromJson(toJson());
}
