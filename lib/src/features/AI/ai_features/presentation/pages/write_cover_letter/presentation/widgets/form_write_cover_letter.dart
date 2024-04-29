import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_cover_letter_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_chat_gpt.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormCoverLetter extends StatefulWidget {
  const FormCoverLetter({super.key});

  @override
  State<FormCoverLetter> createState() => _FormCoverLetterState();
}

class _FormCoverLetterState extends State<FormCoverLetter> {
  final _jobTitleController = TextEditingController();
  final _aboutYourSelfController = TextEditingController();
  final _promptController = TextEditingController();
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
                title: 'JOB TITLE',
                textInputAction: TextInputAction.next,
                validator: (about) {
                  if (about == null || about.isEmpty) {
                    return appLocal(context).fieldCannotBeEmpty;
                  } else {
                    return null;
                  }
                },
                hint: 'Which job are you applying for',
              ),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _aboutYourSelfController,
                  title: appLocal(context).aboutYourSelf.toUpperCase(),
                  textInputAction: TextInputAction.next,
                  hint: 'Some thing about your self and your experience',
                  maxLines: 3,
                  validator: (style) {
                    if (style == null || style.isEmpty) {
                      return appLocal(context).fieldCannotBeEmpty;
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _promptController,
                  title: appLocal(context).prompt.toUpperCase(),
                  maxLines: 2,
                  keyboardType: TextInputType.number,
                  hint: 'How many words for this?',
                ),
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
              gptVersion.getPoint().toString(),
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
      final model = WriteCoverLetterModel(
        maxToken: int.parse(_promptController.text.trim()),
        jobTitle: _jobTitleController.text,
        summary: _aboutYourSelfController.text + _promptController.text,
        gptModel: gptVersion.toVersion(),
      );
      context.read<AiFeaturesBloc>().add(GenerateCoverLetter(model));
    }
  }

  _clearAll() {
    _jobTitleController.clear();
    _aboutYourSelfController.clear();
    _promptController.clear();
  }

  @override
  void dispose() {
    super.dispose();

    _jobTitleController.dispose();
    _aboutYourSelfController.dispose();
    _promptController.dispose();
  }
}
