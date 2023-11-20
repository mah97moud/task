import 'package:equatable/equatable.dart';

class RegisterResponse extends Equatable {
  final String? message;
  final int? status;
  final int? otp;

  const RegisterResponse({this.message, this.status, this.otp});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return RegisterResponse(
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
