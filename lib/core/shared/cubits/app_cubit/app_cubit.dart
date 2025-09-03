import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskora/core/helpers/cache_helper.dart';
import 'package:taskora/core/shared/cubits/app_cubit/app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(const AppStates.initial());

  static AppCubit get(context) => BlocProvider.of<AppCubit>(context);

  Future<void> checkRememberMe() async {
    emit(const AppStates.loading());

    // Check internet connectivity
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      emit(const AppStates.noInternet());
      return;
    }

    // Access shared preferences to check for saved credentials

    final savedEmail = await CacheHelper.getData("email") ?? "";
    final savedPassword = await CacheHelper.getData("pass") ?? "";

    if (savedEmail == "" || savedPassword == "") {
      emit(const AppStates.onboarding());
    } else {
      const isLoggedIn = false;
      //     await loginWithSavedCredentials(savedEmail.toString(), savedPassword.toString());
      if (isLoggedIn) {
        emit(const AppStates.loggedIn());
      } else {
        emit(const AppStates.onboarding());
      }
    }
  }

  /* final LoginUseCase loginUseCase;

  Future<bool> loginWithSavedCredentials(String email, String password) async {
    final loginModel = LoginModel(email: email, pass: password);

    final result = await loginUseCase(loginModel);

    return result.fold((failure) => false, (loginEntity) {
      if (loginEntity.userData == null) {
        logW(loginEntity.userData);
        return false;
      }
      UserDataUtils.setInstance(loginEntity.userData!);
      logW(loginEntity.userData);
      return true;
    });
  } */
}
