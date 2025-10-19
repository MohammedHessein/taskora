import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:taskora/core/constants/api_constants.dart';
import 'package:taskora/features/auth/register/data/models/register_request_model.dart';
import 'package:taskora/features/auth/register/data/models/register_response_model.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST(ApiConstants.registerEndPoint)
  Future<RegisterResponseModel> register(
    @Body() RegisterRequestModel registerRequestModel,
  );
}
