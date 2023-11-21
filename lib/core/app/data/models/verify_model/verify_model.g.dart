// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyModelImpl _$$VerifyModelImplFromJson(Map<String, dynamic> json) =>
    _$VerifyModelImpl(
      message: json['message'] as String?,
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$VerifyModelImplToJson(_$VerifyModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'status': instance.status,
    };
