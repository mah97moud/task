import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'me_model.freezed.dart';
part 'me_model.g.dart';

@freezed
class MeModel with _$MeModel {
  factory MeModel({
    Data? data,
    String? message,
    int? status,
  }) = _MeModel;

  factory MeModel.fromJson(Map<String, dynamic> json) =>
      _$MeModelFromJson(json);
}
