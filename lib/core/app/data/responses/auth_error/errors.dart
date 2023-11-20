import 'package:equatable/equatable.dart';

class Errors extends Equatable {
  final List<String>? dialCode;
  final List<String>? phone;

  const Errors({this.dialCode, this.phone});

  factory Errors.fromJson(Map<String, dynamic> json) => Errors(
        dialCode: json['dial_code'] as List<String>?,
        phone: json['phone'] as List<String>?,
      );

  Map<String, dynamic> toJson() => {
        'dial_code': dialCode,
        'phone': phone,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [dialCode, phone];
}
