// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i40;

import '../../features/AI/ai_character/data/datasources/ai_character_datasource.dart'
    as _i3;
import '../../features/AI/ai_character/data/datasources/ai_character_datasource_impl.dart'
    as _i4;
import '../../features/AI/ai_character/data/repositories_impl/ai_character_repository_impl.dart'
    as _i6;
import '../../features/AI/ai_character/domain/repostoties/ai_character_repository.dart'
    as _i5;
import '../../features/AI/ai_character/domain/usecase/ai_character_usecase.dart'
    as _i7;
import '../../features/AI/ai_features/data/datasources/auto_generate_datasource.dart'
    as _i17;
import '../../features/AI/ai_features/data/datasources/auto_generate_datasource_impl.dart'
    as _i18;
import '../../features/AI/ai_features/data/repostories_impl/auto_generate_repository_impl.dart'
    as _i20;
import '../../features/AI/ai_features/domain/repositories/auto_generate_history_repository.dart'
    as _i19;
import '../../features/AI/ai_features/domain/usecases/auto_generate_usecase.dart'
    as _i21;
import '../../features/AI/create_digital_profile/data/datasources/create_digital_profile_datasource.dart'
    as _i22;
import '../../features/AI/create_digital_profile/data/datasources/create_digital_profile_datasource_impl.dart'
    as _i23;
import '../../features/AI/create_digital_profile/data/repositories_impl/create_digital_profile_repository_impl.dart'
    as _i25;
import '../../features/AI/create_digital_profile/domain/repositories/create_digital_profile_repository.dart'
    as _i24;
import '../../features/AI/create_digital_profile/domain/usecases/create_digital_profile_usecase.dart'
    as _i26;
import '../../features/auth/data/datasources/auth_datasource.dart' as _i12;
import '../../features/auth/data/datasources/auth_datasource_impl.dart' as _i13;
import '../../features/auth/data/repositories_impl/auth_repository_impl.dart'
    as _i15;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i14;
import '../../features/auth/domain/usecases/auth_usecase.dart' as _i16;
import '../../features/blogs/data/datasources/blog_datasource.dart' as _i42;
import '../../features/blogs/data/datasources/blog_datasource_impl.dart'
    as _i43;
import '../../features/blogs/data/repositories_impl/blog_repository_impl.dart'
    as _i45;
import '../../features/blogs/domain/repositories/blog_repository.dart' as _i44;
import '../../features/blogs/domain/usecases/fetch_all_blogs_usecase.dart'
    as _i46;
import '../../features/blogs/domain/usecases/fetch_all_blogs_usecase_impl.dart'
    as _i47;
import '../../features/home/data/datasources/remote/auth_datasource.dart'
    as _i10;
import '../../features/home/data/datasources/remote/auth_datasource_impl.dart'
    as _i11;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i28;
import '../../features/profile/data/datasoures/profile_datasource.dart' as _i29;
import '../../features/profile/data/datasoures/profile_datasource_impl.dart'
    as _i30;
import '../../features/profile/data/repositories_impl/profile_repository_impl.dart'
    as _i32;
import '../../features/profile/domain/repositories/profile_repository.dart'
    as _i31;
import '../../features/profile/domain/usecases/profile_usecase.dart' as _i33;
import '../../features/setting/data/datasources/setting_datasource.dart'
    as _i35;
import '../../features/setting/data/datasources/setting_datasource_impl.dart'
    as _i36;
import '../../features/setting/data/repositories_impl/setting_repository_impl.dart'
    as _i38;
import '../../features/setting/domain/repositories/setting_repository.dart'
    as _i37;
import '../../features/setting/domain/usecases/setting_usecase.dart' as _i39;
import '../../utils/data/cache/app_share_preference.dart' as _i8;
import '../../utils/data/cache/app_share_preference_impl.dart' as _i9;
import '../../utils/https/dio/app_rest_client.dart' as _i34;
import '../../utils/services/strapi/strapi_dio_client.dart' as _i48;
import '../../utils/services/strapi/strapi_service.dart' as _i41;
import 'di.dart' as _i49;

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
  gh.factory<_i3.AICharacterDataSource>(() => _i4.AICharacterDataSourceImpl());
  gh.factory<_i5.AICharacterRepository>(
      () => _i6.AICharacterRepositoryImpl(gh<_i3.AICharacterDataSource>()));
  gh.factory<_i7.AICharacterUseCase>(
      () => _i7.AICharacterUseCaseImpl(gh<_i5.AICharacterRepository>()));
  gh.factory<_i8.AppSharePreference>(() => _i9.AppSharePreferenceImpl());
  gh.factory<_i10.AuthDataSource>(() => _i11.AuthDataSourceImpl());
  gh.factory<_i12.AuthDataSource>(() => _i13.AuthDataSourceImpl());
  gh.factory<_i14.AuthRepository>(
      () => _i15.AuthRepositoryImpl(gh<_i12.AuthDataSource>()));
  gh.factory<_i16.AuthUseCase>(
      () => _i16.AuthUseCaseImpl(gh<_i14.AuthRepository>()));
  gh.factory<_i17.AutoGenerateDataSource>(
      () => _i18.AutoGenerateDataSourceImpl());
  gh.factory<_i19.AutoGenerateRepository>(
      () => _i20.AutoGenerateRepositoryImpl(gh<_i17.AutoGenerateDataSource>()));
  gh.factory<_i21.AutoGenerateUseCase>(
      () => _i21.AutoGenerateUseCaseImpl(gh<_i19.AutoGenerateRepository>()));
  gh.factory<_i22.CreateDigitalProfileDataSource>(
      () => _i23.CreateDigitalProfileDataSourceImpl());
  gh.factory<_i24.CreateDigitalProfileRepository>(() =>
      _i25.CreateDigitalProfileRepositoryImpl(
          gh<_i22.CreateDigitalProfileDataSource>()));
  gh.factory<_i26.CreateDigitalProfileUseCase>(() =>
      _i26.CreateDigitalProfileUseCaseImpl(
          gh<_i24.CreateDigitalProfileRepository>()));
  gh.lazySingleton<_i27.Dio>(
    () => strapiModule.strapiDioClient(),
    instanceName: 'strapi',
  );
  gh.singleton<_i28.HomeBloc>(() => _i28.HomeBloc());
  gh.factory<_i29.ProfileDataSource>(() => _i30.ProfileDataSourceImpl());
  gh.factory<_i31.ProfileRepository>(
      () => _i32.ProfileRepositoryImpl(gh<_i29.ProfileDataSource>()));
  gh.factory<_i33.ProfileUseCase>(
      () => _i33.ProfileUseCaseImpl(gh<_i31.ProfileRepository>()));
  gh.factory<_i34.RestClient>(() => appModule.restClient);
  gh.factory<_i35.SettingDataSource>(() => _i36.SettingDataSourceImpl());
  gh.factory<_i37.SettingRepository>(
      () => _i38.SettingRepositoryImpl(gh<_i35.SettingDataSource>()));
  gh.factory<_i39.SettingUseCase>(
      () => _i39.SettingUseCaseImpl(gh<_i37.SettingRepository>()));
  await gh.factoryAsync<_i40.SharedPreferences>(
    () => appModule.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i41.StrapiService>(
      () => _i41.StrapiService(gh<_i27.Dio>(instanceName: 'strapi')));
  gh.factory<_i42.BlogDataSource>(
      () => _i43.BlogDataSourceImpl(gh<_i41.StrapiService>()));
  gh.factory<_i44.BlogRepository>(
      () => _i45.BlogRepositoryImpl(gh<_i42.BlogDataSource>()));
  gh.factory<_i46.FetchAllBlogsUseCase>(
      () => _i47.FetchAllBlogsUseCaseImpl(gh<_i44.BlogRepository>()));
  return getIt;
}

class _$StrapiModule extends _i48.StrapiModule {}

class _$AppModule extends _i49.AppModule {}
