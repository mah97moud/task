import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:task/core/helpers/utiles.dart';

import '../app_prefs.dart';

const String applicationJson = 'application/json';
const String contentType = 'content-type';
const String accept = 'accept';
const String acceptAll = '*/*';
const String authorization = 'Authorization';
const String connection = 'Connection';
const String keepAlive = 'keep-alive';
const String acceptEncoding = 'Accept-Encoding';
const String acceptEncodingType = 'gzip, deflate, br';

class DioFactory {
  const DioFactory({
    required AppPreferences appPreferences,
  }) : _appPreferences = appPreferences;

  final AppPreferences _appPreferences;

  Future<Dio> getDio() async {
    final dio = Dio();
    final jar = await Utils.prepareJar();

    // final String language = await _appPreferences.getAppLanguage;
    final String? token = await _appPreferences.getToken;

    final Map<String, String> headers = {
      accept: acceptAll,
      connection: keepAlive,
      acceptEncoding: acceptEncodingType,
      authorization: 'Bearer $token',
      contentType: applicationJson,
    };

    dio.options = BaseOptions(
      headers: headers,
    );

    dio.interceptors.add(CookieManager(jar));

    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
        ),
      );
    }
    return dio;
  }
}
