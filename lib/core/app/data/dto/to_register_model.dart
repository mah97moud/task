import 'package:task/core/app/data/models/register_model/register_model.dart';
import 'package:task/core/app/data/responses/register_response.dart';

extension ToRegisgterModel on RegisterResponse {
  RegisterModel get toRegisterModel => RegisterModel.fromJson(toJson());
}
