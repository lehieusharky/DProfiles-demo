import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/write_profile_introduction_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_chat_gpt.dart';
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
                  controller: _aboutYourSelfController,
                  maxLines: 3,
                  title: appLocal(context).aboutYourSelf.toUpperCase(),
                  textInputAction: TextInputAction.next,
                  validator: (about) {
                    if (about == null || about.isEmpty) {
                      return appLocal(context).fieldCannotBeEmpty;
                    } else {
                      return null;
                    }
                  },
                  hint: appLocal(context).tellMeAboutYourSelf),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _writeStyleController,
                  title: appLocal(context).writeStyle.toUpperCase(),
                  textInputAction: TextInputAction.next,
                  hint: appLocal(context).normal,
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
                  keyboardType: TextInputType.number,
                  title: appLocal(context).prompt.toUpperCase(),
                  validator: (style) {
                    if (style == null || style.isEmpty) {
                      return appLocal(context).fieldCannotBeEmpty;
                    } else {
                      return null;
                    }
                  },
                  hint: appLocal(context).howManyWordsForThis,
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
      final model = WriteProfileIntroductionModel(
        summary: _aboutYourSelfController.text,
        style: _writeStyleController.text.trim(),
        gptModel: gptVersion.toVersion(),
        maxToken: int.parse(_promptController.text.trim()),
      );
      context.read<AiFeaturesBloc>().add(GenerateProfileIntroduction(model));
    }
  }

  _clearAll() {
    _aboutYourSelfController.clear();
    _writeStyleController.clear();
    _promptController.clear();
  }

  @override
  void dispose() {
    super.dispose();

    _aboutYourSelfController.dispose();
    _writeStyleController.dispose();
    _promptController.dispose();
  }
}
