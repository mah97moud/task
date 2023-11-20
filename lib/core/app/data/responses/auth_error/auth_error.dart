import 'package:equatable/equatable.dart';

import 'errors.dart';

class AuthError extends Equatable {
  final String? message;
  final Errors? errors;

  const AuthError({this.message, this.errors});

  factory AuthError.fromJson(Map<String, dynamic> json) => AuthError(
        message: json['message'] as String?,
        errors: json['errors'] == null
            ? null
            : Errors.fromJson(json['errors'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'message': message,
        'errors': errors?.toJson(),
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [message, errors];
}
