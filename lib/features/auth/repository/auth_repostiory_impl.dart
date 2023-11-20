import 'package:task/core/app/data/dto/to_register_model.dart';
import 'package:task/core/app/data/models/register_model/register_model.dart';
import 'package:task/core/app/data/requests/register_request.dart';
import 'package:task/core/app/network/app_service_client.dart';
import 'package:task/core/app/network/network_info.dart';

import '../../../core/app/network/error_handler.dart';
import '../../../core/helpers/type_helper.dart';
import '../../../core/resources/strings_manager.dart';
import 'auth_repostiory.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AppServicesClient _appServicesClient;
  final NetworkInfo _networkInfo;

  AuthRepositoryImpl({
    required NetworkInfo networkInfo,
    required AppServicesClient appServicesClient,
  })  : _appServicesClient = appServicesClient,
        _networkInfo = networkInfo;

  @override
  Future<Result<RegisterModel>> register(
      RegisterRequest registerRequest) async {
    final isConnected = await _networkInfo.isConnected;

    if (isConnected) {
      try {
        final response = await _appServicesClient.register(registerRequest);
        final registerModel = response.toRegisterModel;

   
          return Success(registerModel);
 
 
      } catch (e) {
        return Failure(ErrorHandler.handle(e).toMessage());
      }
    } else {
      return Failure(NoIternetConnectionException(AppStrings.noInternetConnection).message);
    }
  }
}
