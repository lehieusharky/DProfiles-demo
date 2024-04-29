// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i35;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i81;

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
import '../../features/AI/ai_character/presentation/pages/my_ai_character/domain/my_ai_character_usecase.dart'
    as _i59;
import '../../features/AI/ai_features/data/datasources/auto_generate_datasource.dart'
    as _i15;
import '../../features/AI/ai_features/data/datasources/auto_generate_datasource_impl.dart'
    as _i16;
import '../../features/AI/ai_features/data/repostories_impl/auto_generate_repository_impl.dart'
    as _i18;
import '../../features/AI/ai_features/domain/repositories/auto_generate_history_repository.dart'
    as _i17;
import '../../features/AI/ai_features/domain/usecases/auto_generate_usecase.dart'
    as _i19;
import '../../features/AI/chat_with_ai_bot/data/datasources/chat_with_ai_datasource.dart'
    as _i20;
import '../../features/AI/chat_with_ai_bot/data/datasources/chat_with_ai_datasource_impl.dart'
    as _i21;
import '../../features/AI/chat_with_ai_bot/data/repositories_impl/chat_with_ai_repository.dart'
    as _i23;
import '../../features/AI/chat_with_ai_bot/domain/repositories/chat_with_ai_repository.dart'
    as _i22;
import '../../features/AI/chat_with_ai_bot/domain/usecases/chat_with_ai_usecase.dart'
    as _i24;
import '../../features/AI/create_digital_profile/data/datasources/create_digital_profile_datasource.dart'
    as _i25;
import '../../features/AI/create_digital_profile/data/datasources/create_digital_profile_datasource_impl.dart'
    as _i26;
import '../../features/AI/create_digital_profile/data/datasources/dprofile_datasource.dart'
    as _i30;
import '../../features/AI/create_digital_profile/data/datasources/dprofile_datasource_impl.dart'
    as _i31;
import '../../features/AI/create_digital_profile/data/repositories_impl/create_digital_profile_repository_impl.dart'
    as _i28;
import '../../features/AI/create_digital_profile/data/repositories_impl/dprofile_repository_impl.dart'
    as _i33;
import '../../features/AI/create_digital_profile/domain/repositories/create_digital_profile_repository.dart'
    as _i27;
import '../../features/AI/create_digital_profile/domain/repositories/dprofile_repository.dart'
    as _i32;
import '../../features/AI/create_digital_profile/domain/usecases/create_digital_profile_usecase.dart'
    as _i29;
import '../../features/AI/create_digital_profile/domain/usecases/dprofile_usecase.dart'
    as _i34;
import '../../features/auth/data/datasources/auth_datasource.dart' as _i10;
import '../../features/auth/data/datasources/auth_datasource_impl.dart' as _i11;
import '../../features/auth/data/repositories_impl/auth_repository_impl.dart'
    as _i13;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i12;
import '../../features/auth/domain/usecases/auth_usecase.dart' as _i14;
import '../../features/auth/presentation/pages/forgot_password/data/datasources/forgot_datasource_impl.dart'
    as _i51;
import '../../features/auth/presentation/pages/forgot_password/data/datasources/forgot_datasources.dart'
    as _i50;
import '../../features/auth/presentation/pages/forgot_password/data/repositories_impl/forgot_password_repository_impl.dart'
    as _i53;
import '../../features/auth/presentation/pages/forgot_password/domain/repositories/forgot_password_repository.dart'
    as _i52;
import '../../features/blogs/data/datasources/blog_datasource.dart' as _i83;
import '../../features/blogs/data/datasources/blog_datasource_impl.dart'
    as _i84;
import '../../features/blogs/data/repositories_impl/blog_repository_impl.dart'
    as _i86;
import '../../features/blogs/domain/repositories/blog_repository.dart' as _i85;
import '../../features/blogs/domain/usecases/fetch_all_blogs_usecase.dart'
    as _i87;
import '../../features/blogs/domain/usecases/fetch_all_blogs_usecase_impl.dart'
    as _i88;
import '../../features/edit_profile/data/datasources/edit_profile_datasource.dart'
    as _i36;
import '../../features/edit_profile/data/datasources/edit_profile_datasource_impl.dart'
    as _i37;
import '../../features/edit_profile/data/repositories_impl/edit_profile_repository_impl.dart'
    as _i39;
import '../../features/edit_profile/domain/repositories/edit_profile_repository.dart'
    as _i38;
import '../../features/edit_profile/domain/usecases/edit_profile_usecase.dart'
    as _i40;
import '../../features/feed/data/datasources/feed_datasource.dart' as _i41;
import '../../features/feed/data/datasources/feed_datasource_impl.dart' as _i42;
import '../../features/feed/data/repositories_impl/feed_repository_impl.dart'
    as _i44;
import '../../features/feed/domain/repositories/feed_repository.dart' as _i43;
import '../../features/home/data/datasources/home_datasource_impl.dart' as _i55;
import '../../features/home/data/datasources/home_datasources.dart' as _i54;
import '../../features/home/data/repositories_impl/home_repository_impl.dart'
    as _i57;
import '../../features/home/domain/repositories/home_repository.dart' as _i56;
import '../../features/home/domain/usecases/home_usecase.dart' as _i58;
import '../../features/profile/data/datasoures/profile_datasource.dart' as _i60;
import '../../features/profile/data/datasoures/profile_datasource_impl.dart'
    as _i61;
import '../../features/profile/data/repositories_impl/profile_repository_impl.dart'
    as _i63;
import '../../features/profile/domain/repositories/profile_repository.dart'
    as _i62;
import '../../features/profile/domain/usecases/profile_usecase.dart' as _i64;
import '../../features/pubic_profile/data/datasource/public_profile_datasource.dart'
    as _i65;
import '../../features/pubic_profile/data/datasource/public_profile_datasource_impl.dart'
    as _i66;
import '../../features/pubic_profile/data/repositories_impl/public_profile_repositories_impl.dart'
    as _i68;
import '../../features/pubic_profile/domain/repositories/public_profile_repository.dart'
    as _i67;
import '../../features/pubic_profile/domain/usecases/public_profile_usecase.dart'
    as _i69;
import '../../features/search/data/datasources/search_datasource.dart' as _i71;
import '../../features/search/data/datasources/search_datasource_impl.dart'
    as _i72;
import '../../features/search/data/repositories_impl/search_repository_impl.dart'
    as _i74;
import '../../features/search/domain/repositories/search_repository.dart'
    as _i73;
import '../../features/search/domain/usecases/search_usecase.dart' as _i75;
import '../../features/setting/data/datasources/setting_datasource.dart'
    as _i76;
import '../../features/setting/data/datasources/setting_datasource_impl.dart'
    as _i77;
import '../../features/setting/data/repositories_impl/setting_repository_impl.dart'
    as _i79;
import '../../features/setting/domain/repositories/setting_repository.dart'
    as _i78;
import '../../features/setting/domain/usecases/setting_usecase.dart' as _i80;
import '../../utils/data/cache/app_share_preference.dart' as _i8;
import '../../utils/data/cache/app_share_preference_impl.dart' as _i9;
import '../../utils/data/datasources/file_datasource.dart' as _i45;
import '../../utils/data/datasources/file_datasource_impl.dart' as _i46;
import '../../utils/data/repositories_impl/file_respository_impl.dart' as _i48;
import '../../utils/domain/repositories/file_repository.dart' as _i47;
import '../../utils/domain/usecases/file_usecase.dart' as _i49;
import '../../utils/https/dio/app_rest_client.dart' as _i70;
import '../../utils/services/strapi/strapi_dio_client.dart' as _i89;
import '../../utils/services/strapi/strapi_service.dart' as _i82;
import 'di.dart' as _i90;

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
  gh.factory<_i12.AuthRepository>(
      () => _i13.AuthRepositoryImpl(gh<_i10.AuthDataSource>()));
  gh.factory<_i14.AuthUseCase>(
      () => _i14.AuthUseCaseImpl(gh<_i12.AuthRepository>()));
  gh.factory<_i15.AutoGenerateDataSource>(
      () => _i16.AutoGenerateDataSourceImpl());
  gh.factory<_i17.AutoGenerateRepository>(
      () => _i18.AutoGenerateRepositoryImpl(gh<_i15.AutoGenerateDataSource>()));
  gh.factory<_i19.AutoGenerateUseCase>(
      () => _i19.AutoGenerateUseCaseImpl(gh<_i17.AutoGenerateRepository>()));
  gh.factory<_i20.ChatWithAIDataSource>(() => _i21.ChatWithAIDataSourceImpl());
  gh.factory<_i22.ChatWithAIRepository>(
      () => _i23.ChatWithAIRepositoryImpl(gh<_i20.ChatWithAIDataSource>()));
  gh.factory<_i24.ChatWithAIUseCase>(
      () => _i24.ChatWithAIUseCaseImpl(gh<_i22.ChatWithAIRepository>()));
  gh.factory<_i25.CreateDigitalProfileDataSource>(
      () => _i26.CreateDigitalProfileDataSourceImpl());
  gh.factory<_i27.CreateDigitalProfileRepository>(() =>
      _i28.CreateDigitalProfileRepositoryImpl(
          gh<_i25.CreateDigitalProfileDataSource>()));
  gh.factory<_i29.CreateDigitalProfileUseCase>(() =>
      _i29.CreateDigitalProfileUseCaseImpl(
          gh<_i27.CreateDigitalProfileRepository>()));
  gh.factory<_i30.DProfileDataSource>(() => _i31.DProfileDataSourceImpl());
  gh.factory<_i32.DProfileRepository>(
      () => _i33.DProfileRepositoryImpl(gh<_i30.DProfileDataSource>()));
  gh.factory<_i34.DProfileUseCase>(
      () => _i34.DProfileUseCaseImpl(gh<_i32.DProfileRepository>()));
  gh.lazySingleton<_i35.Dio>(
    () => strapiModule.strapiDioClient(),
    instanceName: 'strapi',
  );
  gh.factory<_i36.EditProfileDataSource>(
      () => _i37.EditProfileDataSourceImpl());
  gh.factory<_i38.EditProfileRepository>(
      () => _i39.EditProfileRepositoryImpl(gh<_i36.EditProfileDataSource>()));
  gh.factory<_i40.EditProfileUseCase>(
      () => _i40.EditProfileUseCaseImpl(gh<_i38.EditProfileRepository>()));
  gh.factory<_i41.FeedDataSource>(() => _i42.FeedDataSourceIml());
  gh.factory<_i43.FeedRepository>(
      () => _i44.FeedRepositoryImpl(gh<_i41.FeedDataSource>()));
  gh.factory<_i45.FileDataSource>(() => _i46.FileDataSourceImpl());
  gh.factory<_i47.FileRepository>(
      () => _i48.FileRepositoryImpl(gh<_i45.FileDataSource>()));
  gh.factory<_i49.FileUseCase>(
      () => _i49.FileUseCaseImpl(gh<_i47.FileRepository>()));
  gh.factory<_i50.ForgotPasswordDataSource>(
      () => _i51.ForgotPasswordDataSourceIml());
  gh.factory<_i52.ForgotPasswordRepository>(() =>
      _i53.ForgotPasswordRepositoryImpl(gh<_i50.ForgotPasswordDataSource>()));
  gh.factory<_i54.HomeDataSource>(() => _i55.HomeDataSourceIml());
  gh.factory<_i56.HomeRepository>(
      () => _i57.HomeRepositoryImpl(gh<_i54.HomeDataSource>()));
  gh.factory<_i58.HomeUseCase>(
      () => _i58.HomeUseCaseImpl(gh<_i56.HomeRepository>()));
  gh.factory<_i59.MyAICharacterUseCase>(
      () => _i59.MyAICharacterUseCaseImpl(gh<_i22.ChatWithAIRepository>()));
  gh.factory<_i60.ProfileDataSource>(() => _i61.ProfileDataSourceImpl());
  gh.factory<_i62.ProfileRepository>(
      () => _i63.ProfileRepositoryImpl(gh<_i60.ProfileDataSource>()));
  gh.factory<_i64.ProfileUseCase>(
      () => _i64.ProfileUseCaseImpl(gh<_i62.ProfileRepository>()));
  gh.factory<_i65.PublicProfileDataSource>(
      () => _i66.PublicProfileDataSourceImpl());
  gh.factory<_i67.PublicProfileRepository>(() =>
      _i68.PublicProfileRepositoryImpl(gh<_i65.PublicProfileDataSource>()));
  gh.factory<_i69.PublicProfileUseCase>(
      () => _i69.PublicProfileUseCaseImpl(gh<_i67.PublicProfileRepository>()));
  gh.factory<_i70.RestClient>(() => appModule.restClient);
  gh.factory<_i71.SearchDataSource>(() => _i72.SearchDataSourceImpl());
  gh.factory<_i73.SearchRepository>(
      () => _i74.SearchRepositoryImpl(gh<_i71.SearchDataSource>()));
  gh.factory<_i75.SearchUseCase>(
      () => _i75.SearchUseCaseImpl(gh<_i73.SearchRepository>()));
  gh.factory<_i76.SettingDataSource>(() => _i77.SettingDataSourceImpl());
  gh.factory<_i78.SettingRepository>(
      () => _i79.SettingRepositoryImpl(gh<_i76.SettingDataSource>()));
  gh.factory<_i80.SettingUseCase>(
      () => _i80.SettingUseCaseImpl(gh<_i78.SettingRepository>()));
  await gh.factoryAsync<_i81.SharedPreferences>(
    () => appModule.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i82.StrapiService>(
      () => _i82.StrapiService(gh<_i35.Dio>(instanceName: 'strapi')));
  gh.factory<_i83.BlogDataSource>(
      () => _i84.BlogDataSourceImpl(gh<_i82.StrapiService>()));
  gh.factory<_i85.BlogRepository>(
      () => _i86.BlogRepositoryImpl(gh<_i83.BlogDataSource>()));
  gh.factory<_i87.FetchAllBlogsUseCase>(
      () => _i88.FetchAllBlogsUseCaseImpl(gh<_i85.BlogRepository>()));
  return getIt;
}

class _$StrapiModule extends _i89.StrapiModule {}

class _$AppModule extends _i90.AppModule {}
