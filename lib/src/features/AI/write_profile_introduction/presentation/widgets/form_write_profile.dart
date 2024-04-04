import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/data/models/profile_introduction_model.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/presentation/bloc/write_profile_introduction_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormWriteProfile extends StatefulWidget {
  const FormWriteProfile({super.key});

  @override
  State<FormWriteProfile> createState() => _FormWriteProfileState();
}

class _FormWriteProfileState extends State<FormWriteProfile> {
  final _aboutYourSelfController = TextEditingController();
  final _writeStyleController = TextEditingController();
  final _promptController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WriteProfileIntroductionBloc,
        WriteProfileIntroductionState>(
      builder: (context, state) {
        return Form(
          key: _keyForm,
          child: Column(
            children: [
              AuthField(
                  controller: _aboutYourSelfController,
                  title: 'ABOUT YOUR SELF',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  hint: 'Company name'),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _writeStyleController,
                  title: 'WRITE STYLE',
                  hint: 'Normal',
                  suffixIcon: const Icon(IconsaxOutline.arrow_down_1),
                ),
              ),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _promptController,
                  title: 'PROMPT',
                  maxLines: 4,
                  hint: 'Your require',
                ),
              ),
              Padding(
                padding: context.padding(vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: context.padding(right: 16),
                      child: AppOutlineButton(context)
                          .elevatedButton(onPressed: () {}, title: 'Clear all'),
                    ),
                    Expanded(
                      child: AppFlatButton(context).elevatedButton(
                        width: context.width,
                        onPressed: () => _sendToAI(context),
                        title: 'Send to AI',
                        suffixIcon: _buildSuffixIconSendButton(),
                        child: (state is WriteProfileIntroLoading)
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
      final model = ProfileIntroductionModel(
        summary: _writeStyleController.text.trim(),
        style: _writeStyleController.text.trim(),
      );
      context
          .read<WriteProfileIntroductionBloc>()
          .add(GenerateProfileIntroduction(model));
    }
  }
}
