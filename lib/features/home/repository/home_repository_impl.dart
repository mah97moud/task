import 'package:task/core/app/data/dto/to_me_model.dart';
import 'package:task/core/app/data/dto/to_product_model.dart';
import 'package:task/core/app/data/models/me_model/me_model.dart';
import 'package:task/core/app/data/models/product_model/product_model.dart';
import 'package:task/core/app/di.dart';
import 'package:task/core/helpers/type_helper.dart';
import 'package:task/features/home/repository/home_repository.dart';

import '../../../core/app/network/app_service_client.dart';
import '../../../core/app/network/error_handler.dart';
import '../../../core/app/network/network_info.dart';
import '../../../core/resources/strings_manager.dart';

class HomeRepositoryImpl extends HomeRepository {
  final AppServicesClient _appServicesClient;
  final NetworkInfo _networkInfo;

  HomeRepositoryImpl({
    required NetworkInfo networkInfo,
    required AppServicesClient appServicesClient,
  })  : 
        _appServicesClient = appServicesClient,
        _networkInfo = networkInfo;

  @override
  Future<Result<MeModel>> me() async {
    final isConnected = await _networkInfo.isConnected;

    if (isConnected) {
      try {
        final response = await _appServicesClient.me(
          identity: identity,
        );
        final registerModel = response.toMeModel;

        return Success(registerModel);
      } catch (e) {
        return Failure(ErrorHandler.handle(e).toMessage());
      }
    } else {
      return Failure(
        NoInternetConnectionException(AppStrings.noInternetConnection).message,
      );
    }
  }

  @override
  Future<Result<ProductModel>> products() async {
    final isConnected = await _networkInfo.isConnected;

    if (isConnected) {
      try {
        final response = await _appServicesClient.products(
          identity: identity,
        );
        final registerModel = response.toProductModel;

        return Success(registerModel);
      } catch (e) {
        return Failure(ErrorHandler.handle(e).toMessage());
      }
    } else {
      return Failure(
        NoInternetConnectionException(AppStrings.noInternetConnection).message,
      );
    }
  }
}
