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

Errors _$ErrorsFromJson(Map<String, dynamic> json) {
  return _Errors.fromJson(json);
}

/// @nodoc
mixin _$Errors {
  @JsonKey(name: 'dial_code')
  List<String> get dialCode => throw _privateConstructorUsedError;
  List<String> get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorsCopyWith<Errors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsCopyWith<$Res> {
  factory $ErrorsCopyWith(Errors value, $Res Function(Errors) then) =
      _$ErrorsCopyWithImpl<$Res, Errors>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dial_code') List<String> dialCode, List<String> phone});
}

/// @nodoc
class _$ErrorsCopyWithImpl<$Res, $Val extends Errors>
    implements $ErrorsCopyWith<$Res> {
  _$ErrorsCopyWithImpl(this._value, this._then);

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
abstract class _$$ErrorsImplCopyWith<$Res> implements $ErrorsCopyWith<$Res> {
  factory _$$ErrorsImplCopyWith(
          _$ErrorsImpl value, $Res Function(_$ErrorsImpl) then) =
      __$$ErrorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dial_code') List<String> dialCode, List<String> phone});
}

/// @nodoc
class __$$ErrorsImplCopyWithImpl<$Res>
    extends _$ErrorsCopyWithImpl<$Res, _$ErrorsImpl>
    implements _$$ErrorsImplCopyWith<$Res> {
  __$$ErrorsImplCopyWithImpl(
      _$ErrorsImpl _value, $Res Function(_$ErrorsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dialCode = null,
    Object? phone = null,
  }) {
    return _then(_$ErrorsImpl(
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
class _$ErrorsImpl implements _Errors {
  const _$ErrorsImpl(
      {@JsonKey(name: 'dial_code') final List<String> dialCode = const [],
      final List<String> phone = const []})
      : _dialCode = dialCode,
        _phone = phone;

  factory _$ErrorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorsImplFromJson(json);

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
    return 'Errors(dialCode: $dialCode, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorsImpl &&
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
  _$$ErrorsImplCopyWith<_$ErrorsImpl> get copyWith =>
      __$$ErrorsImplCopyWithImpl<_$ErrorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorsImplToJson(
      this,
    );
  }
}

abstract class _Errors implements Errors {
  const factory _Errors(
      {@JsonKey(name: 'dial_code') final List<String> dialCode,
      final List<String> phone}) = _$ErrorsImpl;

  factory _Errors.fromJson(Map<String, dynamic> json) = _$ErrorsImpl.fromJson;

  @override
  @JsonKey(name: 'dial_code')
  List<String> get dialCode;
  @override
  List<String> get phone;
  @override
  @JsonKey(ignore: true)
  _$$ErrorsImplCopyWith<_$ErrorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
