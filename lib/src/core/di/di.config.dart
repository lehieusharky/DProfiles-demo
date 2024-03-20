// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../../features/home/data/datasources/remote/auth_datasource.dart'
    as _i5;
import '../../features/home/data/datasources/remote/auth_datasource_impl.dart'
    as _i6;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i7;
import '../../features/setting/data/datasources/setting_datasource.dart' as _i9;
import '../../features/setting/data/datasources/setting_datasource_impl.dart'
    as _i10;
import '../../features/setting/data/repositories_impl/setting_repository_impl.dart'
    as _i12;
import '../../features/setting/domain/repositories/setting_repository.dart'
    as _i11;
import '../../features/setting/domain/usecases/setting_usecase.dart' as _i13;
import '../../utils/data/cache/app_share_preference.dart' as _i3;
import '../../utils/data/cache/app_share_preference_impl.dart' as _i4;
import '../../utils/https/app_rest_client.dart' as _i8;
import 'di.dart' as _i15;

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
  gh.singleton<_i7.HomeBloc>(() => _i7.HomeBloc());
  gh.factory<_i8.RestClient>(() => appModule.restClient);
  gh.factory<_i9.SettingDataSource>(() => _i10.SettingDataSourceImpl());
  gh.factory<_i11.SettingRepository>(
      () => _i12.SettingRepositoryImpl(gh<_i9.SettingDataSource>()));
  gh.factory<_i13.SettingUseCase>(
      () => _i13.SettingUseCaseImpl(gh<_i11.SettingRepository>()));
  await gh.factoryAsync<_i14.SharedPreferences>(
    () => appModule.sharedPreferences,
    preResolve: true,
  );
  return getIt;
}

class _$AppModule extends _i15.AppModule {}
