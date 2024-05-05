part of 'import_bloc_register.dart';

class BlocDI {
  BlocDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerFactory<AiFeaturesBloc>(
      () => AiFeaturesBloc(
          injector.get<AutoGenerateUseCase>(), injector.get<ProfileUseCase>()),
    );

    injector.registerFactory<AiCharacterBloc>(
      () => AiCharacterBloc(
        injector.get<AICharacterUseCase>(),
        injector.get<ProfileUseCase>(),
        injector.get<ChatWithAIUseCase>(),
      ),
    );

    injector.registerFactory<MyAiCharacterBloc>(
      () => MyAiCharacterBloc(injector.get<MyAICharacterUseCase>()),
    );

    injector.registerFactory<ProfileBloc>(
      () => ProfileBloc(
        injector.get<ProfileUseCase>(),
        injector.get<CreateDigitalProfileUseCase>(),
        injector.get<FileUseCase>(),
        injector.get<EditProfileUseCase>(),
        injector.get<PostUseCase>(),
      ),
    );

    injector.registerFactory<HomeBloc>(
      () => HomeBloc(
        injector.get<HomeUseCase>(),
        injector.get<ProfileUseCase>(),
      ),
    );

    injector.registerFactory<ChatWithAiBloc>(
      () => ChatWithAiBloc(
        injector.get<ChatWithAIUseCase>(),
        injector.get<ProfileUseCase>(),
      ),
    );

    injector.registerFactory<EditProfileBloc>(
      () => EditProfileBloc(
        injector.get<EditProfileUseCase>(),
        injector.get<ProfileUseCase>(),
      ),
    );

    injector.registerFactory<SettingBloc>(
      () => SettingBloc(injector.get<SettingUseCase>()),
    );

    injector.registerFactory<DashboardBloc>(
      () => DashboardBloc(
        injector.get<SettingUseCase>(),
        injector.get<EditProfileUseCase>(),
        injector.get<CreateDigitalProfileUseCase>(),
      ),
    );

    injector.registerFactory<SearchBloc>(
      () => SearchBloc(injector.get<SearchUseCase>()),
    );

    injector.registerFactory<PublicProfileBloc>(
      () => PublicProfileBloc(injector.get<PublicProfileUseCase>()),
    );

    injector.registerFactory<CreateDigitalProfileBloc>(
      () => CreateDigitalProfileBloc(
        injector.get<CreateDigitalProfileUseCase>(),
        injector.get<DProfileUseCase>(),
      ),
    );

    injector.registerFactory<PostBloc>(
      () => PostBloc(
        injector.get<PostUseCase>(),
        injector.get<FileUseCase>(),
      ),
    );
  }
}
