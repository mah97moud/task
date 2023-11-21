// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      avatar: json['avatar'] as String?,
      accountNr: json['account_nr'] as int?,
      name: json['name'] as String?,
      active: json['active'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'account_nr': instance.accountNr,
      'name': instance.name,
      'active': instance.active,
      'type': instance.type,
    };
