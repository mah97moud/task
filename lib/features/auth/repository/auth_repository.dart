import 'package:task/core/app/data/models/verify_model/verify_model.dart';
import 'package:task/core/helpers/type_helper.dart';

import '../../../core/app/data/models/auth_model/auth_model.dart';
import '../../../core/app/data/requests/login_request.dart';
import '../../../core/app/data/requests/register_request.dart';
import '../../../core/app/data/requests/verfiy_request.dart';

abstract class AuthRepository {
  Future<Result<AuthModel>> register(
    RegisterRequest registerRequest,
  );
  Future<Result<VerifyModel>> verify(
    VerifyRequest verifyRequest,
  );
  Future<Result<AuthModel>> login(LoginRequest loginRequest);
}
