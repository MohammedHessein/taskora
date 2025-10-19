import 'package:injectable/injectable.dart';
import 'package:taskora/core/service/api_client.dart';
import 'package:taskora/features/auth/register/data/models/register_request_model.dart';
import 'package:taskora/features/auth/register/data/models/register_response_model.dart';

@injectable
class RegisterRepository {
  const RegisterRepository(this._apiClient);

  final ApiClient _apiClient;

  Future<RegisterResponseModel> register(RegisterRequestModel requestModel) {
    return _apiClient.register(requestModel);
  }
}
