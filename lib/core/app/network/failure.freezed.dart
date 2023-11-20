// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FailureDio {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureDioCopyWith<FailureDio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureDioCopyWith<$Res> {
  factory $FailureDioCopyWith(
          FailureDio value, $Res Function(FailureDio) then) =
      _$FailureDioCopyWithImpl<$Res, FailureDio>;
  @useResult
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$FailureDioCopyWithImpl<$Res, $Val extends FailureDio>
    implements $FailureDioCopyWith<$Res> {
  _$FailureDioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailureDioImplCopyWith<$Res>
    implements $FailureDioCopyWith<$Res> {
  factory _$$FailureDioImplCopyWith(
          _$FailureDioImpl value, $Res Function(_$FailureDioImpl) then) =
      __$$FailureDioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$FailureDioImplCopyWithImpl<$Res>
    extends _$FailureDioCopyWithImpl<$Res, _$FailureDioImpl>
    implements _$$FailureDioImplCopyWith<$Res> {
  __$$FailureDioImplCopyWithImpl(
      _$FailureDioImpl _value, $Res Function(_$FailureDioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_$FailureDioImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureDioImpl implements _FailureDio {
  const _$FailureDioImpl({this.statusCode = -1, this.message = ''});

  @override
  @JsonKey()
  final int statusCode;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'FailureDio(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureDioImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureDioImplCopyWith<_$FailureDioImpl> get copyWith =>
      __$$FailureDioImplCopyWithImpl<_$FailureDioImpl>(this, _$identity);
}

abstract class _FailureDio implements FailureDio {
  const factory _FailureDio({final int statusCode, final String message}) =
      _$FailureDioImpl;

  @override
  int get statusCode;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureDioImplCopyWith<_$FailureDioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
