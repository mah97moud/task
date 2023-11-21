import 'package:equatable/equatable.dart';

class VerifyResponse extends Equatable {
  final String? message;
  final String? accessToken;
  final String? tokenType;
  final int? status;

  const VerifyResponse({
    this.message,
    this.accessToken,
    this.tokenType,
    this.status,
  });

  factory VerifyResponse.fromJson(Map<String, dynamic> json) {
    return VerifyResponse(
      message: json['message'] as String?,
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      status: json['status'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'message': message,
        'access_token': accessToken,
        'token_type': tokenType,
        'status': status,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [message, accessToken, tokenType, status];
}
