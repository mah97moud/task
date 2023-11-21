import 'package:equatable/equatable.dart';

class Account extends Equatable {
  final String? avatar;
  final int? accountNr;
  final String? name;
  final bool? active;
  final String? type;

  const Account({
    this.avatar,
    this.accountNr,
    this.name,
    this.active,
    this.type,
  });

  factory Account.fromJson(Map<String, dynamic> json) => Account(
        avatar: json['avatar'] as String?,
        accountNr: json['account_nr'] as int?,
        name: json['name'] as String?,
        active: json['active'] as bool?,
        type: json['type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'avatar': avatar,
        'account_nr': accountNr,
        'name': name,
        'active': active,
        'type': type,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [avatar, accountNr, name, active, type];
}
