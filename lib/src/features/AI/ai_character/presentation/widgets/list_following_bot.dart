import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/domain/entities/ext_ai_character_bot_entity.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/create_ai_character_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_character_bot.dart';

class ListFollowingBot extends StatefulWidget {
  const ListFollowingBot({Key? key}) : super(key: key);

  @override
  State<ListFollowingBot> createState() => _ListFollowingBotState();
}

class _ListFollowingBotState extends State<ListFollowingBot> {
  List<AICharacterBotModel>? bots = [];

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AiCharacterBloc, AiCharacterState,
        List<AICharacterBotModel>?>(
      selector: (state) {
        if (state is GetListCharacterBotSuccess) {
          bots = state.bots;
        }
        return bots;
      },
      builder: (context, state) {
        if (bots == null) {
          return const MyLoading();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CreateAICharacterBotButton(),
            context.sizedBox(height: 5),
            Expanded(
              child: ListCharacterBot(
                children:
                    bots!.map((e) => e.toPopularBot(context, false)).toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
