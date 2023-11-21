import 'package:equatable/equatable.dart';

class AuthResponse extends Equatable {
  final String? message;
  final int? status;
  final int? otp;

  const AuthResponse({this.message, this.status, this.otp});

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      message: json['message'] as String?,
      status: json['status'] as int?,
      otp: json['otp'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'message': message,
        'status': status,
        'otp': otp,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [message, status, otp];
}
