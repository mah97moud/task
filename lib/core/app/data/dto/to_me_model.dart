import 'package:task/core/app/data/models/me_model/me_model.dart';
import 'package:task/core/app/data/responses/me_response/me_response.dart';

extension ToMeModel on MeResponse {
  MeModel get toMeModel => MeModel.fromJson(toJson());
}
