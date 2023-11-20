// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthErrorModel _$AuthErrorModelFromJson(Map<String, dynamic> json) {
  return _AuthErrorModel.fromJson(json);
}

/// @nodoc
mixin _$AuthErrorModel {
  String get message => throw _privateConstructorUsedError;
  ErrorsModel get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthErrorModelCopyWith<AuthErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthErrorModelCopyWith<$Res> {
  factory $AuthErrorModelCopyWith(
          AuthErrorModel value, $Res Function(AuthErrorModel) then) =
      _$AuthErrorModelCopyWithImpl<$Res, AuthErrorModel>;
  @useResult
  $Res call({String message, ErrorsModel errors});

  $ErrorsModelCopyWith<$Res> get errors;
}

/// @nodoc
class _$AuthErrorModelCopyWithImpl<$Res, $Val extends AuthErrorModel>
    implements $AuthErrorModelCopyWith<$Res> {
  _$AuthErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorsModelCopyWith<$Res> get errors {
    return $ErrorsModelCopyWith<$Res>(_value.errors, (value) {
      return _then(_value.copyWith(errors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthErrorModelImplCopyWith<$Res>
    implements $AuthErrorModelCopyWith<$Res> {
  factory _$$AuthErrorModelImplCopyWith(_$AuthErrorModelImpl value,
          $Res Function(_$AuthErrorModelImpl) then) =
      __$$AuthErrorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, ErrorsModel errors});

  @override
  $ErrorsModelCopyWith<$Res> get errors;
}

/// @nodoc
class __$$AuthErrorModelImplCopyWithImpl<$Res>
    extends _$AuthErrorModelCopyWithImpl<$Res, _$AuthErrorModelImpl>
    implements _$$AuthErrorModelImplCopyWith<$Res> {
  __$$AuthErrorModelImplCopyWithImpl(
      _$AuthErrorModelImpl _value, $Res Function(_$AuthErrorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? errors = null,
  }) {
    return _then(_$AuthErrorModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthErrorModelImpl implements _AuthErrorModel {
  const _$AuthErrorModelImpl(
      {this.message = '', this.errors = const ErrorsModel()});

  factory _$AuthErrorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthErrorModelImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final ErrorsModel errors;

  @override
  String toString() {
    return 'AuthErrorModel(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errors, errors) || other.errors == errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, errors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorModelImplCopyWith<_$AuthErrorModelImpl> get copyWith =>
      __$$AuthErrorModelImplCopyWithImpl<_$AuthErrorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthErrorModelImplToJson(
      this,
    );
  }
}

abstract class _AuthErrorModel implements AuthErrorModel {
  const factory _AuthErrorModel(
      {final String message, final ErrorsModel errors}) = _$AuthErrorModelImpl;

  factory _AuthErrorModel.fromJson(Map<String, dynamic> json) =
      _$AuthErrorModelImpl.fromJson;

  @override
  String get message;
  @override
  ErrorsModel get errors;
  @override
  @JsonKey(ignore: true)
  _$$AuthErrorModelImplCopyWith<_$AuthErrorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
