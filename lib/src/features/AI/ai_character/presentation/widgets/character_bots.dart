import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/domain/entities/ext_ai_character_bot_entity.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterBots extends StatefulWidget {
  const CharacterBots({Key? key}) : super(key: key);

  @override
  State<CharacterBots> createState() => _CharacterBotsState();
}

class _CharacterBotsState extends State<CharacterBots> {
  bool isPopularBot = true;
  List<AICharacterBotModel>? bots = [];

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AiCharacterBloc, AiCharacterState,
        List<AICharacterBotModel>?>(
      selector: (state) {
        if (state is GetListPopularCharacterBotSuccess) {
          isPopularBot = true;
          bots = state.bots;
        } else if (state is GetListCharacterBotSuccess) {
          isPopularBot = false;
          bots = state.bots;
        }
        return bots;
      },
      builder: (context, state) {
        if (bots == null) {
          return const MyLoading();
        }

        return GridView.count(
          primary: false,
          shrinkWrap: true,
          crossAxisSpacing: context.sizeWidth(12),
          childAspectRatio: 0.7,
          mainAxisSpacing: context.sizeWidth(16),
          crossAxisCount: 2,
          children:
              bots!.map((e) => e.toPopularBot(context, isPopularBot)).toList(),
        );
      },
    );
  }
}
