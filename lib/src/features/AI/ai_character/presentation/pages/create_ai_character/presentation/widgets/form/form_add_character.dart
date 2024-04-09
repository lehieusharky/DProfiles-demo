import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/create_ai_character/presentation/widgets/slider_set_property_character.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/constant/ai_character_bot_properties.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormAddCharacter extends StatelessWidget {
  const FormAddCharacter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: context.padding(bottom: 24),
          child: Text(
            appLocal(context).addYourCharacter,
            style: AppFont()
                .fontTheme(context, weight: FontWeight.bold)
                .labelMedium,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: PropertiesOfCharacter.values
              .map((e) => SliderSetPropertyCharacter(property: e))
              .toList(),
        ),
        Padding(
          padding: context.padding(vertical: 32),
          child: AppFlatButton(context).elevatedButton(
            width: context.width,
            onPressed: () => _save(context),
            title: appLocal(context).nextButton.toUpperCase(),
          ),
        ),
      ],
    );
  }

  _save(BuildContext context) {
    context
        .read<AiCharacterBloc>()
        .add(const AICharacterChangeCreationStep(isNext: true));
  }
}
