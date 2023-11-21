import 'package:task/core/app/data/models/verify_model/verify_model.dart';
import 'package:task/core/app/data/responses/verify_response.dart';

extension ToVerifyModel on VerifyResponse {
  VerifyModel get toVerifyModel => VerifyModel.fromJson(toJson());
}
