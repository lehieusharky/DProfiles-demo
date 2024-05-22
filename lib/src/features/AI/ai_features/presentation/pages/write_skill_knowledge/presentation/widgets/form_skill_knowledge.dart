import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_skill_knowledge_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_chat_gpt.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormSkillKnowledge extends StatefulWidget {
  const FormSkillKnowledge({super.key});

  @override
  State<FormSkillKnowledge> createState() => _FormSkillKnowledgeState();
}

class _FormSkillKnowledgeState extends State<FormSkillKnowledge> {
  final _jobTitleController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final gptVersion = context.watch<AiFeaturesBloc>().currentChatGPTVersion;

    return BlocConsumer<AiFeaturesBloc, AiFeaturesState>(
      listener: (context, state) {
        if (state is AiFeaturesLoading) {
          showLoadingDialog(context);
        }
      },
      builder: (context, state) {
        return Form(
          key: _keyForm,
          child: Column(
            children: [
              AuthField(
                autoFocus: true,
                controller: _jobTitleController,
                title: appLocal(context).jobTitle.toUpperCase(),
                textInputAction: TextInputAction.done,
                validator: (about) {
                  if (about == null || about.isEmpty) {
                    return appLocal(context).fieldCannotBeEmpty;
                  } else {
                    return null;
                  }
                },
                hint: appLocal(context).whichJobAreYouApplingFor,
              ),
              Padding(
                padding: context.padding(vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: context.padding(right: 16),
                      child: AppOutlineButton(context).elevatedButton(
                          onPressed: () => _clearAll(),
                          title: appLocal(context).clearAll),
                    ),
                    Expanded(
                      child: AppFlatButton(context).elevatedButton(
                        width: context.width,
                        onPressed: () => _sendToAI(context, gptVersion),
                        title: appLocal(context).sendToAI,
                        suffixIcon: _buildSuffixIconSendButton(gptVersion),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSuffixIconSendButton(SupportedChatGPT gptVersion) => Padding(
        padding: context.padding(left: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "-${gptVersion.getPoint()}",
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.bold)
                  .bodyMedium,
            ),
            context.sizedBox(width: 5),
            const Icon(IconsaxBold.wallet_2)
          ],
        ),
      );

  void _sendToAI(BuildContext context, SupportedChatGPT gptVersion) {
    if (_keyForm.currentState?.validate() ?? false) {
      final model = WriteSkillKnowledgeModel(
        jobTitle: _jobTitleController.text,
        gptModel: gptVersion.toVersion(),
      );

      context.read<AiFeaturesBloc>().add(GenerateSkillKnowledge(model));
    }
  }

  _clearAll() {
    _jobTitleController.clear();
  }

  @override
  void dispose() {
    super.dispose();

    _jobTitleController.dispose();
  }
}
