// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthErrorModelImpl _$$AuthErrorModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthErrorModelImpl(
      message: json['message'] as String? ?? '',
      errors: json['errors'] == null
          ? const ErrorsModel()
          : ErrorsModel.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthErrorModelImplToJson(
        _$AuthErrorModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
    };
