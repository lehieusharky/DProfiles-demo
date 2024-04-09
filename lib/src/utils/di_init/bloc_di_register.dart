import 'package:demo_dprofiles/src/features/AI/ai_character/domain/usecase/ai_character_usecase.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/domain/usecases/auto_generate_usecase.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/home/domain/usecases/home_usecase.dart';
import 'package:demo_dprofiles/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/domain/usecases/profile_usecase.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:get_it/get_it.dart';

class BlocDI {
  BlocDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerFactory<AiFeaturesBloc>(
      () => AiFeaturesBloc(injector.get<AutoGenerateUseCase>()),
    );

    injector.registerFactory<AiCharacterBloc>(
      () => AiCharacterBloc(
          injector.get<AICharacterUseCase>(), injector.get<ProfileUseCase>()),
    );

    injector.registerFactory<ProfileBloc>(
      () => ProfileBloc(injector.get<ProfileUseCase>()),
    );

    injector.registerFactory<HomeBloc>(
      () => HomeBloc(injector.get<HomeUseCase>()),
    );
  }
}
