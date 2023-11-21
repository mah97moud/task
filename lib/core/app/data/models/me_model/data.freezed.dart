// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_nr')
  int? get accountNr => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'middle_name')
  dynamic get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  dynamic get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'dial_code')
  int? get dialCode => throw _privateConstructorUsedError;
  String? get iso2 => throw _privateConstructorUsedError;
  String? get iso3 => throw _privateConstructorUsedError;
  int? get phone => throw _privateConstructorUsedError;
  dynamic get dob => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  List<dynamic>? get permissions => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_login_at')
  DateTime? get lastLoginAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'login_count')
  int? get loginCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_lang')
  String? get defaultLang => throw _privateConstructorUsedError;
  List<Account>? get accounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String? avatar,
      @JsonKey(name: 'account_nr') int? accountNr,
      String? name,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'middle_name') dynamic middleName,
      @JsonKey(name: 'last_name') String? lastName,
      dynamic email,
      @JsonKey(name: 'dial_code') int? dialCode,
      String? iso2,
      String? iso3,
      int? phone,
      dynamic dob,
      String? type,
      List<dynamic>? permissions,
      @JsonKey(name: 'last_login_at') DateTime? lastLoginAt,
      @JsonKey(name: 'login_count') int? loginCount,
      @JsonKey(name: 'default_lang') String? defaultLang,
      List<Account>? accounts});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? accountNr = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? dialCode = freezed,
    Object? iso2 = freezed,
    Object? iso3 = freezed,
    Object? phone = freezed,
    Object? dob = freezed,
    Object? type = freezed,
    Object? permissions = freezed,
    Object? lastLoginAt = freezed,
    Object? loginCount = freezed,
    Object? defaultLang = freezed,
    Object? accounts = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNr: freezed == accountNr
          ? _value.accountNr
          : accountNr // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dialCode: freezed == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as int?,
      iso2: freezed == iso2
          ? _value.iso2
          : iso2 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso3: freezed == iso3
          ? _value.iso3
          : iso3 // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loginCount: freezed == loginCount
          ? _value.loginCount
          : loginCount // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultLang: freezed == defaultLang
          ? _value.defaultLang
          : defaultLang // ignore: cast_nullable_to_non_nullable
              as String?,
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? avatar,
      @JsonKey(name: 'account_nr') int? accountNr,
      String? name,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'middle_name') dynamic middleName,
      @JsonKey(name: 'last_name') String? lastName,
      dynamic email,
      @JsonKey(name: 'dial_code') int? dialCode,
      String? iso2,
      String? iso3,
      int? phone,
      dynamic dob,
      String? type,
      List<dynamic>? permissions,
      @JsonKey(name: 'last_login_at') DateTime? lastLoginAt,
      @JsonKey(name: 'login_count') int? loginCount,
      @JsonKey(name: 'default_lang') String? defaultLang,
      List<Account>? accounts});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? accountNr = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? dialCode = freezed,
    Object? iso2 = freezed,
    Object? iso3 = freezed,
    Object? phone = freezed,
    Object? dob = freezed,
    Object? type = freezed,
    Object? permissions = freezed,
    Object? lastLoginAt = freezed,
    Object? loginCount = freezed,
    Object? defaultLang = freezed,
    Object? accounts = freezed,
  }) {
    return _then(_$DataImpl(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNr: freezed == accountNr
          ? _value.accountNr
          : accountNr // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dialCode: freezed == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as int?,
      iso2: freezed == iso2
          ? _value.iso2
          : iso2 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso3: freezed == iso3
          ? _value.iso3
          : iso3 // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: freezed == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loginCount: freezed == loginCount
          ? _value.loginCount
          : loginCount // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultLang: freezed == defaultLang
          ? _value.defaultLang
          : defaultLang // ignore: cast_nullable_to_non_nullable
              as String?,
      accounts: freezed == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {this.avatar,
      @JsonKey(name: 'account_nr') this.accountNr,
      this.name,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'middle_name') this.middleName,
      @JsonKey(name: 'last_name') this.lastName,
      this.email,
      @JsonKey(name: 'dial_code') this.dialCode,
      this.iso2,
      this.iso3,
      this.phone,
      this.dob,
      this.type,
      final List<dynamic>? permissions,
      @JsonKey(name: 'last_login_at') this.lastLoginAt,
      @JsonKey(name: 'login_count') this.loginCount,
      @JsonKey(name: 'default_lang') this.defaultLang,
      final List<Account>? accounts})
      : _permissions = permissions,
        _accounts = accounts;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? avatar;
  @override
  @JsonKey(name: 'account_nr')
  final int? accountNr;
  @override
  final String? name;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'middle_name')
  final dynamic middleName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final dynamic email;
  @override
  @JsonKey(name: 'dial_code')
  final int? dialCode;
  @override
  final String? iso2;
  @override
  final String? iso3;
  @override
  final int? phone;
  @override
  final dynamic dob;
  @override
  final String? type;
  final List<dynamic>? _permissions;
  @override
  List<dynamic>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'last_login_at')
  final DateTime? lastLoginAt;
  @override
  @JsonKey(name: 'login_count')
  final int? loginCount;
  @override
  @JsonKey(name: 'default_lang')
  final String? defaultLang;
  final List<Account>? _accounts;
  @override
  List<Account>? get accounts {
    final value = _accounts;
    if (value == null) return null;
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(avatar: $avatar, accountNr: $accountNr, name: $name, firstName: $firstName, middleName: $middleName, lastName: $lastName, email: $email, dialCode: $dialCode, iso2: $iso2, iso3: $iso3, phone: $phone, dob: $dob, type: $type, permissions: $permissions, lastLoginAt: $lastLoginAt, loginCount: $loginCount, defaultLang: $defaultLang, accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.accountNr, accountNr) ||
                other.accountNr == accountNr) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            const DeepCollectionEquality()
                .equals(other.middleName, middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            (identical(other.dialCode, dialCode) ||
                other.dialCode == dialCode) &&
            (identical(other.iso2, iso2) || other.iso2 == iso2) &&
            (identical(other.iso3, iso3) || other.iso3 == iso3) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.loginCount, loginCount) ||
                other.loginCount == loginCount) &&
            (identical(other.defaultLang, defaultLang) ||
                other.defaultLang == defaultLang) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      avatar,
      accountNr,
      name,
      firstName,
      const DeepCollectionEquality().hash(middleName),
      lastName,
      const DeepCollectionEquality().hash(email),
      dialCode,
      iso2,
      iso3,
      phone,
      const DeepCollectionEquality().hash(dob),
      type,
      const DeepCollectionEquality().hash(_permissions),
      lastLoginAt,
      loginCount,
      defaultLang,
      const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
      {final String? avatar,
      @JsonKey(name: 'account_nr') final int? accountNr,
      final String? name,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'middle_name') final dynamic middleName,
      @JsonKey(name: 'last_name') final String? lastName,
      final dynamic email,
      @JsonKey(name: 'dial_code') final int? dialCode,
      final String? iso2,
      final String? iso3,
      final int? phone,
      final dynamic dob,
      final String? type,
      final List<dynamic>? permissions,
      @JsonKey(name: 'last_login_at') final DateTime? lastLoginAt,
      @JsonKey(name: 'login_count') final int? loginCount,
      @JsonKey(name: 'default_lang') final String? defaultLang,
      final List<Account>? accounts}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get avatar;
  @override
  @JsonKey(name: 'account_nr')
  int? get accountNr;
  @override
  String? get name;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'middle_name')
  dynamic get middleName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  dynamic get email;
  @override
  @JsonKey(name: 'dial_code')
  int? get dialCode;
  @override
  String? get iso2;
  @override
  String? get iso3;
  @override
  int? get phone;
  @override
  dynamic get dob;
  @override
  String? get type;
  @override
  List<dynamic>? get permissions;
  @override
  @JsonKey(name: 'last_login_at')
  DateTime? get lastLoginAt;
  @override
  @JsonKey(name: 'login_count')
  int? get loginCount;
  @override
  @JsonKey(name: 'default_lang')
  String? get defaultLang;
  @override
  List<Account>? get accounts;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
