import 'package:equatable/equatable.dart';

class LoginRequest extends Equatable {
  final int? dialCode;
  final int? phone;
  final String? identity;

  const LoginRequest({this.dialCode, this.phone, this.identity});

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
        dialCode: json['dial_code'] as int?,
        phone: json['phone'] as int?,
        identity: json['identity'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'dial_code': dialCode,
        'phone': phone,
        'identity': identity,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [dialCode, phone, identity];
}
