// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i19;

import '../../features/auth/data/datasources/auth_datasource.dart' as _i7;
import '../../features/auth/data/datasources/auth_datasource_impl.dart' as _i8;
import '../../features/auth/data/repositories_impl/auth_repository_impl.dart'
    as _i10;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i9;
import '../../features/auth/domain/usecases/auth_usecase.dart' as _i11;
import '../../features/home/data/datasources/remote/auth_datasource.dart'
    as _i5;
import '../../features/home/data/datasources/remote/auth_datasource_impl.dart'
    as _i6;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i12;
import '../../features/setting/data/datasources/setting_datasource.dart'
    as _i14;
import '../../features/setting/data/datasources/setting_datasource_impl.dart'
    as _i15;
import '../../features/setting/data/repositories_impl/setting_repository_impl.dart'
    as _i17;
import '../../features/setting/domain/repositories/setting_repository.dart'
    as _i16;
import '../../features/setting/domain/usecases/setting_usecase.dart' as _i18;
import '../../utils/data/cache/app_share_preference.dart' as _i3;
import '../../utils/data/cache/app_share_preference_impl.dart' as _i4;
import '../../utils/https/dio/app_rest_client.dart' as _i13;
import 'di.dart' as _i20;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i3.AppSharePreference>(() => _i4.AppSharePreferenceImpl());
  gh.factory<_i5.AuthDataSource>(() => _i6.AuthDataSourceImpl());
  gh.factory<_i7.AuthDataSource>(() => _i8.AuthDataSourceImpl());
  gh.factory<_i9.AuthRepository>(
      () => _i10.AuthRepositoryImpl(gh<_i7.AuthDataSource>()));
  gh.factory<_i11.AuthUseCase>(
      () => _i11.AuthUseCaseImpl(gh<_i9.AuthRepository>()));
  gh.singleton<_i12.HomeBloc>(() => _i12.HomeBloc());
  gh.factory<_i13.RestClient>(() => appModule.restClient);
  gh.factory<_i14.SettingDataSource>(() => _i15.SettingDataSourceImpl());
  gh.factory<_i16.SettingRepository>(
      () => _i17.SettingRepositoryImpl(gh<_i14.SettingDataSource>()));
  gh.factory<_i18.SettingUseCase>(
      () => _i18.SettingUseCaseImpl(gh<_i16.SettingRepository>()));
  await gh.factoryAsync<_i19.SharedPreferences>(
    () => appModule.sharedPreferences,
    preResolve: true,
  );
  return getIt;
}

class _$AppModule extends _i20.AppModule {}
