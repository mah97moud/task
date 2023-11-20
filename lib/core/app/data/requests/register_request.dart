import 'package:equatable/equatable.dart';

class RegisterRequest extends Equatable {
  final int? dialCode;
  final String? firstName;
  final String? lastName;
  final String? identity;
  final int? phone;

  const RegisterRequest({
    this.dialCode,
    this.firstName,
    this.lastName,
    this.identity,
    this.phone,
  });

  factory RegisterRequest.fromJson(Map<String, dynamic> json) {
    return RegisterRequest(
      dialCode: json['dial_code'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      identity: json['identity'] as String?,
      phone: json['phone'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'dial_code': dialCode,
        'first_name': firstName,
        'last_name': lastName,
        'identity': identity,
        'phone': phone,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      dialCode,
      firstName,
      lastName,
      identity,
      phone,
    ];
  }
}
