import 'package:dio/dio.dart';
import 'package:task/core/app/data/models/auth_error_model/auth_error_model.dart';
import 'package:task/core/app/network/failure.dart';

import '../../resources/strings_manager.dart';

class ErrorHandler implements Exception {
  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      failure = _handleError(error);
    } else {
      // default error
      failure = DataSource.unknown.getFailure;
    }
  }
  late final FailureDio failure;

  FailureDio _handleError(DioException dioEx) {
    return switch (dioEx.type) {
      DioExceptionType.connectionTimeout =>
        DataSource.connectTimeOut.getFailure,
      DioExceptionType.sendTimeout => DataSource.sendTimeOut.getFailure,
      DioExceptionType.receiveTimeout => DataSource.receiveTimeOut.getFailure,
      DioExceptionType.badCertificate => DataSource.badRequest.getFailure,
      DioExceptionType.badResponse => _badResponse(dioEx.response),
      DioExceptionType.cancel => DataSource.cancel.getFailure,
      DioExceptionType.connectionError =>
        DataSource.noInternetConnection.getFailure,
      DioExceptionType.unknown => DataSource.unknown.getFailure
    };
  }

  FailureDio _badResponse(Response? response) {
    final responseData = response?.data;
    final responseCode = response?.statusCode;
    if (responseCode != null && responseData != null) {
      final data = responseData;
      // final generalError = AuthError.fromJson(data as Map<String, dynamic>);
      // final error = generalError.toAuthErrorModel;
      final message =
          data["message"] as String?;
      // final phone =
      //     (data["errors"]["phone"] as List).map((e) => e.toString()).toList();
      // final dialCode = (data["errors"]["dial_code"] as List)
      //     .map((e) => e.toString())
      //     .toList();
      final error = AuthErrorModel(
        // errors: ErrorsModel(
        //   phone: phone,
        //   dialCode: dialCode,
        // ),
        message: message ?? '',
      );
      print('Response Data $error');

      return FailureDio(
        statusCode: responseCode,
        message: error.message,
      );
    }
    return DataSource.unknown.getFailure;
  }
}

extension ErrorHandlerEx on ErrorHandler {
  String toMessage() => failure.message;
  int toCode() => failure.statusCode;
}

class NoIternetConnectionException implements Exception {
  NoIternetConnectionException(this.message);

  final String message;
}

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unauthorised,
  noFound,
  internalServerError,
  connectTimeOut,
  cancel,
  receiveTimeOut,
  sendTimeOut,
  cacheError,
  noInternetConnection,
  unknown,
}

extension DataSourceExtension on DataSource {
  FailureDio get getFailure {
    switch (this) {
      case DataSource.success:
        return const FailureDio(
          statusCode: ResponseCode.success,
          message: ResponseMessage.success,
        );
      case DataSource.noContent:
        return const FailureDio(
          statusCode: ResponseCode.noContent,
          message: ResponseMessage.noContent,
        );
      case DataSource.badRequest:
        return const FailureDio(
          statusCode: ResponseCode.badRequest,
          message: ResponseMessage.badRequest,
        );
      case DataSource.forbidden:
        return const FailureDio(
          statusCode: ResponseCode.forbidden,
          message: ResponseMessage.forbidden,
        );
      case DataSource.unauthorised:
        return const FailureDio(
          statusCode: ResponseCode.unauthorised,
          message: ResponseMessage.unauthorised,
        );
      case DataSource.noFound:
        return const FailureDio(
          statusCode: ResponseCode.noFound,
          message: ResponseMessage.noFound,
        );
      case DataSource.internalServerError:
        return const FailureDio(
          statusCode: ResponseCode.internalServerError,
          message: ResponseMessage.internalServerError,
        );
      case DataSource.connectTimeOut:
        return const FailureDio(
          statusCode: ResponseCode.connectTimeOut,
          message: ResponseMessage.connectTimeOut,
        );
      case DataSource.cancel:
        return const FailureDio(
          statusCode: ResponseCode.cancel,
          message: ResponseMessage.cancel,
        );
      case DataSource.receiveTimeOut:
        return const FailureDio(
          statusCode: ResponseCode.receiveTimeOut,
          message: ResponseMessage.receiveTimeOut,
        );
      case DataSource.sendTimeOut:
        return const FailureDio(
          statusCode: ResponseCode.sendTimeOut,
          message: ResponseMessage.sendTimeOut,
        );
      case DataSource.cacheError:
        return const FailureDio(
          statusCode: ResponseCode.cacheError,
          message: ResponseMessage.cacheError,
        );
      case DataSource.noInternetConnection:
        return const FailureDio(
          statusCode: ResponseCode.noInternetConnection,
          message: ResponseMessage.noInternetConnection,
        );
      case DataSource.unknown:
        return const FailureDio(
          statusCode: ResponseCode.unknown,
          message: ResponseMessage.unknown,
        );
    }
  }
}

class ResponseCode {
  ResponseCode._();

  static const int success = 200;
  static const int noContent = 201; // success with no data
  static const int badRequest = 400; // failure , Api reject request
  static const int forbidden = 403; // Api reject request
  static const int unauthorised = 401; // failure, user unauthorised
  static const int noFound = 404; // source not found
  static const int internalServerError = 500; // failure, crash in server side

  /// local status code
  static const int connectTimeOut = -1;
  static const int cancel = -2;
  static const int receiveTimeOut = -3;
  static const int sendTimeOut = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int unknown = -7;
}

class ResponseMessage {
  ResponseMessage._();

  static const String success = AppStrings.success;
  static const String noContent = AppStrings.success; // success with no data
  static const String badRequest =
      AppStrings.badRequest; // failure , Api reject request
  static const String forbidden = AppStrings.forbidden; // Api reject request
  static const String unauthorised =
      AppStrings.unauthorised; // failure, user unauthorised
  static const String noFound = AppStrings.noFound; // source not found
  static const String internalServerError =
      AppStrings.genericError; // failure, crash in server side

  /// local status code
  static const String connectTimeOut = AppStrings.timeOut;
  static const String cancel = AppStrings.cancel;
  static const String receiveTimeOut = AppStrings.timeOut;
  static const String sendTimeOut = AppStrings.timeOut;
  static const String cacheError = AppStrings.cacheError;
  static const String noInternetConnection = AppStrings.noInternetConnection;
  static const String unknown = AppStrings.genericError;
}

class ApiInternalStatus {
  static const int success = 0;
  static const int failure = 1;
}
