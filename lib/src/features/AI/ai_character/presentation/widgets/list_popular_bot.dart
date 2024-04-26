import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/domain/entities/ext_ai_character_bot_entity.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_character_bot.dart';

class ListPopularBot extends StatefulWidget {
  const ListPopularBot({Key? key}) : super(key: key);

  @override
  State<ListPopularBot> createState() => _ListPopularBotState();
}

class _ListPopularBotState extends State<ListPopularBot> {
  List<AICharacterBotModel>? bots = [];

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AiCharacterBloc, AiCharacterState,
        List<AICharacterBotModel>?>(
      selector: (state) {
        if (state is GetListPopularCharacterBotSuccess) {
          bots = state.bots;
        }
        return bots;
      },
      builder: (context, state) {
        if (bots == null) {
          return const MyLoading();
        }

        return ListCharacterBot(
          children: bots!.map((e) => e.toPopularBot(context, true)).toList(),
        );
      },
    );
  }
}
