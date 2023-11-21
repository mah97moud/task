// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'me_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeModel _$MeModelFromJson(Map<String, dynamic> json) {
  return _MeModel.fromJson(json);
}

/// @nodoc
mixin _$MeModel {
  Data? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeModelCopyWith<MeModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeModelCopyWith<$Res> {
  factory $MeModelCopyWith(MeModel value, $Res Function(MeModel) then) =
      _$MeModelCopyWithImpl<$Res, MeModel>;
  @useResult
  $Res call({Data? data, String? message, int? status});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MeModelCopyWithImpl<$Res, $Val extends MeModel>
    implements $MeModelCopyWith<$Res> {
  _$MeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeModelImplCopyWith<$Res> implements $MeModelCopyWith<$Res> {
  factory _$$MeModelImplCopyWith(
          _$MeModelImpl value, $Res Function(_$MeModelImpl) then) =
      __$$MeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data, String? message, int? status});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$MeModelImplCopyWithImpl<$Res>
    extends _$MeModelCopyWithImpl<$Res, _$MeModelImpl>
    implements _$$MeModelImplCopyWith<$Res> {
  __$$MeModelImplCopyWithImpl(
      _$MeModelImpl _value, $Res Function(_$MeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$MeModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
class _$MeModelImpl implements _MeModel {
  _$MeModelImpl({this.data, this.message, this.status});

  factory _$MeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeModelImplFromJson(json);

  @override
  final Data? data;
  @override
  final String? message;
  @override
  final int? status;

  @override
  String toString() {
    return 'MeModel(data: $data, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeModelImplCopyWith<_$MeModelImpl> get copyWith =>
      __$$MeModelImplCopyWithImpl<_$MeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeModelImplToJson(
      this,
    );
  }
}

abstract class _MeModel implements MeModel {
  factory _MeModel(
      {final Data? data,
      final String? message,
      final int? status}) = _$MeModelImpl;

  factory _MeModel.fromJson(Map<String, dynamic> json) = _$MeModelImpl.fromJson;

  @override
  Data? get data;
  @override
  String? get message;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$MeModelImplCopyWith<_$MeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
