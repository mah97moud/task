import 'package:equatable/equatable.dart';

class VerifyRequest extends Equatable {
  final String? otp;
  final String? identity;
  final String? fcmToken;
  final int? phone;

  const VerifyRequest({this.otp, this.identity, this.fcmToken, this.phone});

  factory VerifyRequest.fromJson(Map<String, dynamic> json) => VerifyRequest(
        otp: json['otp'] as String?,
        identity: json['identity'] as String?,
        fcmToken: json['fcm_token'] as String?,
        phone: json['phone'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'otp': otp,
        'identity': identity,
        'fcm_token': fcmToken,
        'phone': phone,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [otp, identity, fcmToken, phone];
}
