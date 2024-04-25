import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAICharacterBotButton extends StatelessWidget {
  const CreateAICharacterBotButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AiCharacterBloc, AiCharacterState, bool>(
      selector: (state) {
        if (state is GetListCharacterBotSuccess) {
          return state.bots.isEmpty ? true : false;
        }

        return true;
      },
      builder: (context, state) {
        if (state) {
          return AppFlatButton(context).elevatedButton(
              title: 'Create Your AI Character',
              onPressed: () =>
                  context.router.push(const CreateAiCharacterRoute()));
        } else {
          return Container();
        }
      },
    );
  }
}
