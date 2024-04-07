import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_interview_question_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_profile_introduction_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormWriteInterviewQuestion extends StatefulWidget {
  const FormWriteInterviewQuestion({super.key});

  @override
  State<FormWriteInterviewQuestion> createState() =>
      _FormWriteInterviewQuestionState();
}

class _FormWriteInterviewQuestionState
    extends State<FormWriteInterviewQuestion> {
  final _jobTitleController = TextEditingController();
  final _interviewQuestionController = TextEditingController();
  final _promptController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AiFeaturesBloc, AiFeaturesState>(
      builder: (context, state) {
        return Form(
          key: _keyForm,
          child: Column(
            children: [
              AuthField(
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
                  hint: 'What job are you applying for?'),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _interviewQuestionController,
                  title: 'INTERVIEW QUESTION',
                  textInputAction: TextInputAction.done,
                  hint: 'Interview question about',
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
                        onPressed: () => _sendToAI(context),
                        title: appLocal(context).sendToAI,
                        suffixIcon: _buildSuffixIconSendButton(),
                        child: (state is AiFeaturesLoading)
                            ? const MyLoading()
                            : null,
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

  Widget _buildSuffixIconSendButton() => Padding(
        padding: context.padding(left: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '10',
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.bold)
                  .bodyMedium,
            ),
            context.sizedBox(width: 5),
            const Icon(IconsaxBold.wallet_2)
          ],
        ),
      );

  void _sendToAI(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      final model = WriteInterviewQuestionModel(
        jobTitle: _jobTitleController.text,
        about: _interviewQuestionController.text.trim(),
        gptModel: 3,
      );
      context.read<AiFeaturesBloc>().add(GenerateInterviewQuestion(model));
    }
  }

  _clearAll() {
    _jobTitleController.clear();
    _interviewQuestionController.clear();
    _promptController.clear();
  }

  @override
  void dispose() {
    super.dispose();

    _jobTitleController.dispose();
    _interviewQuestionController.dispose();
    _promptController.dispose();
  }
}