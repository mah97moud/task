// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyModel _$VerifyModelFromJson(Map<String, dynamic> json) {
  return _VerifyModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyModel {
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyModelCopyWith<VerifyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyModelCopyWith<$Res> {
  factory $VerifyModelCopyWith(
          VerifyModel value, $Res Function(VerifyModel) then) =
      _$VerifyModelCopyWithImpl<$Res, VerifyModel>;
  @useResult
  $Res call(
      {String? message,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      int? status});
}

/// @nodoc
class _$VerifyModelCopyWithImpl<$Res, $Val extends VerifyModel>
    implements $VerifyModelCopyWith<$Res> {
  _$VerifyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyModelImplCopyWith<$Res>
    implements $VerifyModelCopyWith<$Res> {
  factory _$$VerifyModelImplCopyWith(
          _$VerifyModelImpl value, $Res Function(_$VerifyModelImpl) then) =
      __$$VerifyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      int? status});
}

/// @nodoc
class __$$VerifyModelImplCopyWithImpl<$Res>
    extends _$VerifyModelCopyWithImpl<$Res, _$VerifyModelImpl>
    implements _$$VerifyModelImplCopyWith<$Res> {
  __$$VerifyModelImplCopyWithImpl(
      _$VerifyModelImpl _value, $Res Function(_$VerifyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? status = freezed,
  }) {
    return _then(_$VerifyModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyModelImpl implements _VerifyModel {
  _$VerifyModelImpl(
      {this.message,
      @JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'token_type') this.tokenType,
      this.status});

  factory _$VerifyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyModelImplFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @override
  final int? status;

  @override
  String toString() {
    return 'VerifyModel(message: $message, accessToken: $accessToken, tokenType: $tokenType, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, accessToken, tokenType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyModelImplCopyWith<_$VerifyModelImpl> get copyWith =>
      __$$VerifyModelImplCopyWithImpl<_$VerifyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyModel implements VerifyModel {
  factory _VerifyModel(
      {final String? message,
      @JsonKey(name: 'access_token') final String? accessToken,
      @JsonKey(name: 'token_type') final String? tokenType,
      final int? status}) = _$VerifyModelImpl;

  factory _VerifyModel.fromJson(Map<String, dynamic> json) =
      _$VerifyModelImpl.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String? get tokenType;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$VerifyModelImplCopyWith<_$VerifyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
