import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/bloc/edit_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FormSkill extends StatefulWidget {
  const FormSkill({Key? key}) : super(key: key);

  @override
  State<FormSkill> createState() => _FormSkillState();
}

class _FormSkillState extends State<FormSkill> {
  late TextEditingController _skillController;
  final keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _skillController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileBloc, EditProfileState>(
      listener: (context, state) {
        if (state is EditProfileLoading) {
          showLoadingDialog(context);
        }

        if (state is EditProfileAddNewSkillSuccess) {
          Navigator.pop(context);
          showMyDialog(context,
              title: const Text('Add success'),
              content: const Text('You have add new skill'),
              action: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context, state.skillModel);
                    },
                    child: const Text('OK'))
              ]);
        }
      },
      builder: (context, state) => Padding(
        padding: context.padding(top: 16),
        child: Form(
          key: keyForm,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  title: 'Skill',
                  hint: 'Write your skill content',
                  maxLines: 2,
                  keyboardType: TextInputType.multiline,
                  autoFocus: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return appLocal(context).fieldCannotBeEmpty;
                    } else {
                      return null;
                    }
                  },
                  controller: _skillController,
                ),
              ),
              Padding(
                padding: context.padding(top: 24, bottom: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: AppOutlineButton(context).elevatedButton(
                        onPressed: () => Navigator.pop(context),
                        title: 'Cancel',
                      ),
                    ),
                    context.sizedBox(width: 16),
                    Expanded(
                      child: MyButton(
                        onPressed: () => _save(),
                        title: 'Save',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _save() {
    if (keyForm.currentState?.validate() ?? false) {
      context
          .read<EditProfileBloc>()
          .add(EditProfileAddNewSkill(_skillController.text));
    }
  }
}
