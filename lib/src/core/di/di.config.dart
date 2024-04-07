// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i17;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i25;

import '../../features/AI/create_digital_profile/data/datasources/create_digital_profile_datasource.dart'
    as _i12;
import '../../features/AI/create_digital_profile/data/datasources/create_digital_profile_datasource_impl.dart'
    as _i13;
import '../../features/AI/create_digital_profile/data/repositories_impl/create_digital_profile_repository_impl.dart'
    as _i15;
import '../../features/AI/create_digital_profile/domain/repositories/create_digital_profile_repository.dart'
    as _i14;
import '../../features/AI/create_digital_profile/domain/usecases/create_digital_profile_usecase.dart'
    as _i16;
import '../../features/AI/write_profile_introduction/data/datasources/write_profile_intro_datasource.dart'
    as _i27;
import '../../features/AI/write_profile_introduction/data/datasources/write_profile_intro_datasource_impl.dart'
    as _i28;
import '../../features/AI/write_profile_introduction/data/repositories_impl/write_profile_intro_repository_impl.dart'
    as _i30;
import '../../features/AI/write_profile_introduction/domain/repositories/write_profile_intro_repository.dart'
    as _i29;
import '../../features/AI/write_profile_introduction/domain/usecases/write_profile_intro_usecase.dart'
    as _i31;
import '../../features/auth/data/datasources/auth_datasource.dart' as _i7;
import '../../features/auth/data/datasources/auth_datasource_impl.dart' as _i8;
import '../../features/auth/data/repositories_impl/auth_repository_impl.dart'
    as _i10;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i9;
import '../../features/auth/domain/usecases/auth_usecase.dart' as _i11;
import '../../features/blogs/data/datasources/blog_datasource.dart' as _i32;
import '../../features/blogs/data/datasources/blog_datasource_impl.dart'
    as _i33;
import '../../features/blogs/data/repositories_impl/blog_repository_impl.dart'
    as _i35;
import '../../features/blogs/domain/repositories/blog_repository.dart' as _i34;
import '../../features/blogs/domain/usecases/fetch_all_blogs_usecase.dart'
    as _i36;
import '../../features/blogs/domain/usecases/fetch_all_blogs_usecase_impl.dart'
    as _i37;
import '../../features/home/data/datasources/remote/auth_datasource.dart'
    as _i5;
import '../../features/home/data/datasources/remote/auth_datasource_impl.dart'
    as _i6;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i18;
import '../../features/setting/data/datasources/setting_datasource.dart'
    as _i20;
import '../../features/setting/data/datasources/setting_datasource_impl.dart'
    as _i21;
import '../../features/setting/data/repositories_impl/setting_repository_impl.dart'
    as _i23;
import '../../features/setting/domain/repositories/setting_repository.dart'
    as _i22;
import '../../features/setting/domain/usecases/setting_usecase.dart' as _i24;
import '../../utils/data/cache/app_share_preference.dart' as _i3;
import '../../utils/data/cache/app_share_preference_impl.dart' as _i4;
import '../../utils/https/dio/app_rest_client.dart' as _i19;
import '../../utils/services/strapi/strapi_dio_client.dart' as _i38;
import '../../utils/services/strapi/strapi_service.dart' as _i26;
import 'di.dart' as _i39;

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
  final strapiModule = _$StrapiModule();
  final appModule = _$AppModule();
  gh.factory<_i3.AppSharePreference>(() => _i4.AppSharePreferenceImpl());
  gh.factory<_i5.AuthDataSource>(() => _i6.AuthDataSourceImpl());
  gh.factory<_i7.AuthDataSource>(() => _i8.AuthDataSourceImpl());
  gh.factory<_i9.AuthRepository>(
      () => _i10.AuthRepositoryImpl(gh<_i7.AuthDataSource>()));
  gh.factory<_i11.AuthUseCase>(
      () => _i11.AuthUseCaseImpl(gh<_i9.AuthRepository>()));
  gh.factory<_i12.CreateDigitalProfileDataSource>(
      () => _i13.CreateDigitalProfileDataSourceImpl());
  gh.factory<_i14.CreateDigitalProfileRepository>(() =>
      _i15.CreateDigitalProfileRepositoryImpl(
          gh<_i12.CreateDigitalProfileDataSource>()));
  gh.factory<_i16.CreateDigitalProfileUseCase>(() =>
      _i16.CreateDigitalProfileUseCaseImpl(
          gh<_i14.CreateDigitalProfileRepository>()));
  gh.lazySingleton<_i17.Dio>(
    () => strapiModule.strapiDioClient(),
    instanceName: 'strapi',
  );
  gh.singleton<_i18.HomeBloc>(() => _i18.HomeBloc());
  gh.factory<_i19.RestClient>(() => appModule.restClient);
  gh.factory<_i20.SettingDataSource>(() => _i21.SettingDataSourceImpl());
  gh.factory<_i22.SettingRepository>(
      () => _i23.SettingRepositoryImpl(gh<_i20.SettingDataSource>()));
  gh.factory<_i24.SettingUseCase>(
      () => _i24.SettingUseCaseImpl(gh<_i22.SettingRepository>()));
  await gh.factoryAsync<_i25.SharedPreferences>(
    () => appModule.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i26.StrapiService>(
      () => _i26.StrapiService(gh<_i17.Dio>(instanceName: 'strapi')));
  gh.factory<_i27.WriteProfileIntroDataSource>(
      () => _i28.WriteProfileIntroDataSourceImpl());
  gh.factory<_i29.WriteProfileIntroRepository>(() =>
      _i30.WriteProfileIntroRepositoryImpl(
          gh<_i27.WriteProfileIntroDataSource>()));
  gh.factory<_i31.WriteProfileIntroductionUseCase>(() =>
      _i31.WriteProfileIntroductionUseCaseImpl(
          gh<_i29.WriteProfileIntroRepository>()));
  gh.factory<_i32.BlogDataSource>(
      () => _i33.BlogDataSourceImpl(gh<_i26.StrapiService>()));
  gh.factory<_i34.BlogRepository>(
      () => _i35.BlogRepositoryImpl(gh<_i32.BlogDataSource>()));
  gh.factory<_i36.FetchAllBlogsUseCase>(
      () => _i37.FetchAllBlogsUseCaseImpl(gh<_i34.BlogRepository>()));
  return getIt;
}

class _$StrapiModule extends _i38.StrapiModule {}

class _$AppModule extends _i39.AppModule {}
