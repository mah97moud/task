// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      avatar: json['avatar'] as String?,
      accountNr: json['account_nr'] as int?,
      name: json['name'] as String?,
      firstName: json['first_name'] as String?,
      middleName: json['middle_name'],
      lastName: json['last_name'] as String?,
      email: json['email'],
      dialCode: json['dial_code'] as int?,
      iso2: json['iso2'] as String?,
      iso3: json['iso3'] as String?,
      phone: json['phone'] as int?,
      dob: json['dob'],
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

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'account_nr': instance.accountNr,
      'name': instance.name,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'email': instance.email,
      'dial_code': instance.dialCode,
      'iso2': instance.iso2,
      'iso3': instance.iso3,
      'phone': instance.phone,
      'dob': instance.dob,
      'type': instance.type,
      'permissions': instance.permissions,
      'last_login_at': instance.lastLoginAt?.toIso8601String(),
      'login_count': instance.loginCount,
      'default_lang': instance.defaultLang,
      'accounts': instance.accounts,
    };
