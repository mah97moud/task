import 'package:task/core/app/data/responses/auth_response.dart';

import '../models/auth_model/auth_model.dart';

extension ToAuthModel on AuthResponse {
  AuthModel get toRegisterModel => AuthModel.fromJson(toJson());
}
