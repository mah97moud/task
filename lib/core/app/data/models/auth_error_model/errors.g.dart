// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorsImpl _$$ErrorsImplFromJson(Map<String, dynamic> json) => _$ErrorsImpl(
      dialCode: (json['dial_code'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      phone:
          (json['phone'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$ErrorsImplToJson(_$ErrorsImpl instance) =>
    <String, dynamic>{
      'dial_code': instance.dialCode,
      'phone': instance.phone,
    };
