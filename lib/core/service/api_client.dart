import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:taskora/core/constants/api_constants.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;
}
