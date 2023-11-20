import 'package:task/core/app/data/models/auth_error_model/auth_error_model.dart';
import 'package:task/core/app/data/models/auth_error_model/errors.dart';
import 'package:task/core/app/data/responses/auth_error/auth_error.dart';
import 'package:task/core/app/data/responses/auth_error/errors.dart';

extension AuthErrorEx on AuthError {
  AuthErrorModel get toAuthErrorModel => AuthErrorModel(
        errors: errors.toErrorsModel,
        message: message ?? ''
      );
}

extension ToErrorsModel on Errors? {
  ErrorsModel get toErrorsModel => this !=null? ErrorsModel(
    dialCode: this!.dialCode ?? [],
    phone: this!.phone ?? [],

  ) : const ErrorsModel();
}
