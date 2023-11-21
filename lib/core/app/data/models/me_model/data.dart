import 'package:freezed_annotation/freezed_annotation.dart';

import 'account.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    String? avatar,
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
    List<Account>? accounts,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
