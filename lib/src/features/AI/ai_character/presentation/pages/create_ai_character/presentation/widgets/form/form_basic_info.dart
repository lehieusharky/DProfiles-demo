import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormBasicInfo extends StatefulWidget {
  const FormBasicInfo({super.key});

  @override
  State<FormBasicInfo> createState() => _FormBasicInfoState();
}

class _FormBasicInfoState extends State<FormBasicInfo>
    with AutomaticKeepAliveClientMixin {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _summaryController = TextEditingController();

  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Form(
      key: _keyForm,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: context.padding(bottom: 24),
              child: Text(
                appLocal(context).addBasicInformation,
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .labelMedium,
              ),
            ),
            AuthField(
                controller: _nameController,
                title: appLocal(context).name.toUpperCase(),
                autoFocus: true,
                textInputAction: TextInputAction.next,
                validator: (name) {
                  if (name == null || name.isEmpty) {
                    return appLocal(context).fieldCannotBeEmpty;
                  } else {
                    return null;
                  }
                },
                hint: appLocal(context).name),
            Padding(
              padding: context.padding(top: 32),
              child: AuthField(
                  controller: _summaryController,
                  title: 'SUMMARY',
                  textInputAction: TextInputAction.done,
                  maxLines: 4,
                  validator: (name) {
                    if (name == null || name.isEmpty) {
                      return appLocal(context).fieldCannotBeEmpty;
                    } else {
                      return null;
                    }
                  },
                  hint: 'Describe something about your bot'),
            ),
            Padding(
              padding: context.padding(vertical: 32),
              child: AppFlatButton(context).elevatedButton(
                width: context.width,
                onPressed: () => _continue(context),
                title: appLocal(context).continueButton.toUpperCase(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _continue(BuildContext context) async {
    if (_keyForm.currentState?.validate() ?? false) {
      final data = AddBasicInfoOfCharacterBot(
        name: _nameController.text,
        summary: _summaryController.text,
      );
      context.read<AiCharacterBloc>().add(data);
    }
  }

  @override
  bool get wantKeepAlive => true;
}
