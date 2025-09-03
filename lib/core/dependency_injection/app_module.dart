import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taskora/core/service/api_client.dart';
import 'package:taskora/core/service/dio_factory.dart';
import 'package:taskora/core/service/location_service.dart';

import '../shared/cubits/app_cubit/app_cubit.dart';

@module
abstract class AppModule {
  /// Cubits -> useCases -> Repos -> Services

  /// <!------ Location Service ------->
  @lazySingleton
  LocationService getLocationService() => LocationService();

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
