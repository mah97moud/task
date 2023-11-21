import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:task/core/app/data/requests/verfiy_request.dart';

import '../data/requests/register_request.dart';
import '../data/responses/register_response.dart';
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
  Future<RegisterResponse> register(
    @Body() RegisterRequest registerRequest, {
    @Query('type') String type = 'individual',
  });
  
  @POST(EndPoints.verify)
  Future<VerifyResponse> verify(
    @Body() VerifyRequest verifyRequest,
  );
}
