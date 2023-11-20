// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterModelImpl _$$RegisterModelImplFromJson(Map<String, dynamic> json) =>
    _$RegisterModelImpl(
      message: json['message'] as String? ?? '',
      status: json['status'] as int? ?? 200,
      otp: json['otp'] as int? ?? 0,
    );

Map<String, dynamic> _$$RegisterModelImplToJson(_$RegisterModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'otp': instance.otp,
    };
