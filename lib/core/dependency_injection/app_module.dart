import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taskora/core/service/api_client.dart';
import 'package:taskora/core/service/dio_factory.dart';
import 'package:taskora/core/service/location_service.dart';
import 'package:taskora/core/shared/cubits/app_cubit/app_cubit.dart';
import 'package:taskora/core/shared/cubits/language_cubit/language_cubit.dart';
import 'package:taskora/features/auth/register/presentation/cubits/register_cubit.dart';
import 'package:taskora/features/location/presentation/cubits/add_location/add_location_cubit.dart';
import 'package:taskora/features/location/presentation/cubits/location_list/location_list_cubit.dart';

@module
abstract class AppModule {
  /// Cubits -> useCases -> Repos -> Services

  /// <!------ Location Service ------->
  @lazySingleton
  LocationService getLocationService() => LocationService();

  @injectable
  LocationListCubit get locationListCubit => LocationListCubit();

  @injectable
  AddLocationCubit get addLocationCubit => AddLocationCubit();

  /// <!------ Language Cubit ------->
  @injectable
  LanguageCubit get languageCubit => LanguageCubit();

  /// <!------ Register Cubit ------->
  @injectable
  RegisterCubit get registerCubit => RegisterCubit();

  /// <!------ APP MODULE ------->
  @factoryMethod
  AppCubit getAppCubit() => AppCubit();

  /// <!------ API CLIENT ------->
  @preResolve
  Future<Dio> get dio async => DioFactory.initializeDio();

  @lazySingleton
  ApiClient getApiClient(Dio dio) => ApiClient(dio);

  /// <!------ EXTERNAL ------->
  @preResolve
  Future<SharedPreferences> get prefs async => SharedPreferences.getInstance();
}
