import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:task/core/app/data/requests/login_request.dart';
import 'package:task/core/app/data/requests/verfiy_request.dart';

import '../data/requests/register_request.dart';
import '../data/responses/auth_response.dart';
import '../data/responses/me_response/me_response.dart';
import '../data/responses/verify_response.dart';
import 'end_point.dart';

part 'app_service_client.g.dart';

@RestApi(baseUrl: 'http://165.22.201.156/api/app/')
abstract class AppServicesClient {
  factory AppServicesClient(
    Dio dio, {
    String baseUrl,
  }) = _AppServicesClient;

  @POST(EndPoints.register)
  Future<AuthResponse> register(
    @Body() RegisterRequest registerRequest, {
    @Query('type') String type = 'individual',
  });

  @POST(EndPoints.login)
  Future<AuthResponse> login(@Body() LoginRequest loginRequest);

  @POST(EndPoints.verify)
  Future<VerifyResponse> verify(
    @Body() VerifyRequest verifyRequest,
  );

  @GET(EndPoints.me)
  Future<MeResponse> me({
    @Header('X-DID') required String identity,
  });
}
