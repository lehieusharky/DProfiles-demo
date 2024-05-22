import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class EditProfileForm extends StatefulWidget {
  const EditProfileForm({Key? key}) : super(key: key);

  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  final _firstNameController = TextEditingController();
  final _bioController = TextEditingController(
      text: 'Hello I’m Product designer, I eager to connect for freelance job');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
              title: appLocal(context).firstName.toUpperCase(),
              hint: appLocal(context).firstNameHint,
              controller: _firstNameController),
        ),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
              title: appLocal(context).lastName.toUpperCase(),
              hint: appLocal(context).lastNameHint,
              controller: _firstNameController),
        ),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
              title: appLocal(context).title.toUpperCase(),
              hint: appLocal(context).titleHint,
              controller: _firstNameController),
        ),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
            title: appLocal(context).location.toUpperCase(),
            hint: appLocal(context).locationHint.toUpperCase(),
            suffixIcon: const Icon(IconsaxOutline.arrow_down_1),
            controller: _firstNameController,
          ),
        ),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
            title: appLocal(context).bio.toUpperCase(),
            hint: '',
            maxLines: 2,
            keyboardType: TextInputType.multiline,
            controller: _bioController,
          ),
        ),
        Padding(
          padding: context.padding(top: 24, bottom: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AppOutlineButton(context).elevatedButton(
                  onPressed: () {},
                  title: appLocal(context).cancel,
                ),
              ),
              context.sizedBox(width: 16),
              Expanded(
                child: MyButton(
                  onPressed: () {},
                  title: appLocal(context).save,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
