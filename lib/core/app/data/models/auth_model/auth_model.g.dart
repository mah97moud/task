// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      message: json['message'] as String? ?? '',
      status: json['status'] as int? ?? 200,
      otp: json['otp'] as int? ?? 0,
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'otp': instance.otp,
    };
