import 'package:task/core/app/data/models/register_model/register_model.dart';
import 'package:task/core/app/data/models/verify_model/verify_model.dart';
import 'package:task/core/helpers/type_helper.dart';

import '../../../core/app/data/requests/register_request.dart';
import '../../../core/app/data/requests/verfiy_request.dart';

abstract class AuthRepository {
  Future<Result<RegisterModel>> register(
    RegisterRequest registerRequest,
  );
  Future<Result<VerifyModel>> verify(
      VerifyRequest verifyRequest,
  );
}
