import 'package:equatable/equatable.dart';

import 'account.dart';

class Data extends Equatable {
  final String? avatar;
  final int? accountNr;
  final String? name;
  final String? firstName;
  final dynamic middleName;
  final String? lastName;
  final dynamic email;
  final int? dialCode;
  final String? iso2;
  final String? iso3;
  final int? phone;
  final dynamic dob;
  final String? type;
  final List<dynamic>? permissions;
  final DateTime? lastLoginAt;
  final int? loginCount;
  final String? defaultLang;
  final List<Account>? accounts;

  const Data({
    this.avatar,
    this.accountNr,
    this.name,
    this.firstName,
    this.middleName,
    this.lastName,
    this.email,
    this.dialCode,
    this.iso2,
    this.iso3,
    this.phone,
    this.dob,
    this.type,
    this.permissions,
    this.lastLoginAt,
    this.loginCount,
    this.defaultLang,
    this.accounts,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        avatar: json['avatar'] as String?,
        accountNr: json['account_nr'] as int?,
        name: json['name'] as String?,
        firstName: json['first_name'] as String?,
        middleName: json['middle_name'] as dynamic,
        lastName: json['last_name'] as String?,
        email: json['email'] as dynamic,
        dialCode: json['dial_code'] as int?,
        iso2: json['iso2'] as String?,
        iso3: json['iso3'] as String?,
        phone: json['phone'] as int?,
        dob: json['dob'] as dynamic,
        type: json['type'] as String?,
        permissions: json['permissions'] as List<dynamic>?,
        lastLoginAt: json['last_login_at'] == null
            ? null
            : DateTime.parse(json['last_login_at'] as String),
        loginCount: json['login_count'] as int?,
        defaultLang: json['default_lang'] as String?,
        accounts: (json['accounts'] as List<dynamic>?)
            ?.map((e) => Account.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'avatar': avatar,
        'account_nr': accountNr,
        'name': name,
        'first_name': firstName,
        'middle_name': middleName,
        'last_name': lastName,
        'email': email,
        'dial_code': dialCode,
        'iso2': iso2,
        'iso3': iso3,
        'phone': phone,
        'dob': dob,
        'type': type,
        'permissions': permissions,
        'last_login_at': lastLoginAt?.toIso8601String(),
        'login_count': loginCount,
        'default_lang': defaultLang,
        'accounts': accounts?.map((e) => e.toJson()).toList(),
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      avatar,
      accountNr,
      name,
      firstName,
      middleName,
      lastName,
      email,
      dialCode,
      iso2,
      iso3,
      phone,
      dob,
      type,
      permissions,
      lastLoginAt,
      loginCount,
      defaultLang,
      accounts,
    ];
  }
}
