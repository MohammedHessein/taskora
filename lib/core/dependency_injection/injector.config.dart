// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:taskora/core/dependency_injection/app_module.dart' as _i924;
import 'package:taskora/core/service/api_client.dart' as _i848;
import 'package:taskora/core/service/location_service.dart' as _i37;
import 'package:taskora/core/shared/cubits/app_cubit/app_cubit.dart' as _i467;
import 'package:taskora/core/shared/cubits/language_cubit/language_cubit.dart'
    as _i103;
import 'package:taskora/features/location/presentation/cubits/add_location/add_location_cubit.dart'
    as _i110;
import 'package:taskora/features/location/presentation/cubits/location_list/location_list_cubit.dart'
    as _i532;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i532.LocationListCubit>(() => appModule.locationListCubit);
    gh.factory<_i110.AddLocationCubit>(() => appModule.addLocationCubit);
    gh.factory<_i103.LanguageCubit>(() => appModule.languageCubit);
    await gh.factoryAsync<_i361.Dio>(
      () => appModule.dio,
      preResolve: true,
    );
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.factory<_i467.AppCubit>(() => appModule.getAppCubit());
    gh.lazySingleton<_i37.LocationService>(
        () => appModule.getLocationService());
    gh.lazySingleton<_i848.ApiClient>(
        () => appModule.getApiClient(gh<_i361.Dio>()));
    return this;
  }
}

class _$AppModule extends _i924.AppModule {}
