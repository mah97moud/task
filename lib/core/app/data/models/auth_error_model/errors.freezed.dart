// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorsModel _$ErrorsModelFromJson(Map<String, dynamic> json) {
  return _ErrorsModel.fromJson(json);
}

/// @nodoc
mixin _$ErrorsModel {
  @JsonKey(name: 'dial_code')
  List<String> get dialCode => throw _privateConstructorUsedError;
  List<String> get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorsModelCopyWith<ErrorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsModelCopyWith<$Res> {
  factory $ErrorsModelCopyWith(
          ErrorsModel value, $Res Function(ErrorsModel) then) =
      _$ErrorsModelCopyWithImpl<$Res, ErrorsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dial_code') List<String> dialCode, List<String> phone});
}

/// @nodoc
class _$ErrorsModelCopyWithImpl<$Res, $Val extends ErrorsModel>
    implements $ErrorsModelCopyWith<$Res> {
  _$ErrorsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dialCode = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      dialCode: null == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorsModelImplCopyWith<$Res>
    implements $ErrorsModelCopyWith<$Res> {
  factory _$$ErrorsModelImplCopyWith(
          _$ErrorsModelImpl value, $Res Function(_$ErrorsModelImpl) then) =
      __$$ErrorsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dial_code') List<String> dialCode, List<String> phone});
}

/// @nodoc
class __$$ErrorsModelImplCopyWithImpl<$Res>
    extends _$ErrorsModelCopyWithImpl<$Res, _$ErrorsModelImpl>
    implements _$$ErrorsModelImplCopyWith<$Res> {
  __$$ErrorsModelImplCopyWithImpl(
      _$ErrorsModelImpl _value, $Res Function(_$ErrorsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dialCode = null,
    Object? phone = null,
  }) {
    return _then(_$ErrorsModelImpl(
      dialCode: null == dialCode
          ? _value._dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phone: null == phone
          ? _value._phone
          : phone // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorsModelImpl implements _ErrorsModel {
  const _$ErrorsModelImpl(
      {@JsonKey(name: 'dial_code') final List<String> dialCode = const [],
      final List<String> phone = const []})
      : _dialCode = dialCode,
        _phone = phone;

  factory _$ErrorsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorsModelImplFromJson(json);

  final List<String> _dialCode;
  @override
  @JsonKey(name: 'dial_code')
  List<String> get dialCode {
    if (_dialCode is EqualUnmodifiableListView) return _dialCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dialCode);
  }

  final List<String> _phone;
  @override
  @JsonKey()
  List<String> get phone {
    if (_phone is EqualUnmodifiableListView) return _phone;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phone);
  }

  @override
  String toString() {
    return 'ErrorsModel(dialCode: $dialCode, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorsModelImpl &&
            const DeepCollectionEquality().equals(other._dialCode, _dialCode) &&
            const DeepCollectionEquality().equals(other._phone, _phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dialCode),
      const DeepCollectionEquality().hash(_phone));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorsModelImplCopyWith<_$ErrorsModelImpl> get copyWith =>
      __$$ErrorsModelImplCopyWithImpl<_$ErrorsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorsModelImplToJson(
      this,
    );
  }
}

abstract class _ErrorsModel implements ErrorsModel {
  const factory _ErrorsModel(
      {@JsonKey(name: 'dial_code') final List<String> dialCode,
      final List<String> phone}) = _$ErrorsModelImpl;

  factory _ErrorsModel.fromJson(Map<String, dynamic> json) =
      _$ErrorsModelImpl.fromJson;

  @override
  @JsonKey(name: 'dial_code')
  List<String> get dialCode;
  @override
  List<String> get phone;
  @override
  @JsonKey(ignore: true)
  _$$ErrorsModelImplCopyWith<_$ErrorsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
