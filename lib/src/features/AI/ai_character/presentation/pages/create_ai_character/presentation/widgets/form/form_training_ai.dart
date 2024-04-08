import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormTrainingAi extends StatefulWidget {
  const FormTrainingAi({Key? key}) : super(key: key);

  @override
  State<FormTrainingAi> createState() => _FormTrainingAiState();
}

class _FormTrainingAiState extends State<FormTrainingAi>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: context.padding(bottom: 24),
          child: Text(
            'Upload your documents to your AI knowledge base',
            style: AppFont()
                .fontTheme(context, weight: FontWeight.bold)
                .labelMedium,
          ),
        ),

        Padding(
          padding: context.padding(vertical: 32),
          child: AppFlatButton(context).elevatedButton(
            width: context.width,
            onPressed: () => _save(context),
            title: appLocal(context).save.toUpperCase(),
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;

  _save(BuildContext context) {
    context.read<AiCharacterBloc>().add(const GenerateCharacterBot());
  }
}
