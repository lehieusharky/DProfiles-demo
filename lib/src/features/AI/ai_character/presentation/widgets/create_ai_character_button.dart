import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAICharacterBotButton extends StatefulWidget {
  const CreateAICharacterBotButton({super.key});

  @override
  State<CreateAICharacterBotButton> createState() =>
      _CreateAICharacterBotButtonState();
}

class _CreateAICharacterBotButtonState
    extends State<CreateAICharacterBotButton> {
  bool _showButton = false;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AiCharacterBloc, AiCharacterState, bool>(
      selector: (state) {
        if (state is GetListCharacterBotSuccess) {
          _showButton = state.bots.isEmpty ? true : false;
        }

        return _showButton;
      },
      builder: (context, state) {
        if (_showButton) {
          return AppFlatButton(context).elevatedButton(
              title: appLocal(context).createYourAiCharacter,
              onPressed: () =>
                  context.router.push(const CreateAiCharacterRoute()));
        } else {
          return Container();
        }
      },
    );
  }
}
