import 'package:equatable/equatable.dart';

import 'data.dart';

class MeResponse extends Equatable {
  final Data? data;
  final String? message;
  final int? status;

  const MeResponse({this.data, this.message, this.status});

  factory MeResponse.fromJson(Map<String, dynamic> json) => MeResponse(
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
        message: json['message'] as String?,
        status: json['status'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
        'message': message,
        'status': status,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [data, message, status];
}
