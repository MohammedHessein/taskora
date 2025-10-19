import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskora/core/dependency_injection/injector.dart';
import 'package:taskora/features/auth/register/data/models/register_request_model.dart';
import 'package:taskora/features/auth/register/data/repositories/register_repository.dart';
import 'package:taskora/features/auth/register/presentation/cubits/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState.initial());

  static RegisterCubit get(context) => BlocProvider.of<RegisterCubit>(context);

  final RegisterRepository _registerRepository = di<RegisterRepository>();

  Future<void> register({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
  }) async {
    emit(const RegisterState.loading());

    try {
      final requestModel = RegisterRequestModel(
        firstName: firstName,
        lastName: lastName,
        email: email,
        phone: phone,
      );

      final registerResponse = await _registerRepository.register(requestModel);

      if (registerResponse.success) {
        emit(RegisterState.success(message: registerResponse.message));
      } else {
        emit(RegisterState.error(message: registerResponse.message));
      }
    } on DioException catch (e) {
      // Extract user-friendly error message from DioException
      final response = e.response;
      final data = response?.data;
      final errorMessage = _extractErrorMessage(data);
      emit(RegisterState.error(message: errorMessage));
    } catch (e) {
      emit(RegisterState.error(message: e.toString()));
    }
  }

  String _extractErrorMessage(dynamic data) {
    if (data is Map<String, dynamic>) {
      // Check for validation errors first
      if (data["errors"] is Map<String, dynamic>) {
        final errorsMap = data["errors"] as Map<String, dynamic>;
        final allErrors = errorsMap.values
            .expand((v) => v is List ? v : [v])
            .map((e) => e.toString())
            .toList();
        if (allErrors.isNotEmpty) return allErrors.join("\n");
      }
      // Fallback to message field
      if (data["message"] != null) {
        return data["message"].toString();
      }
    }
    if (data is String) return data;
    return "An error occurred. Please try again.";
  }
}
