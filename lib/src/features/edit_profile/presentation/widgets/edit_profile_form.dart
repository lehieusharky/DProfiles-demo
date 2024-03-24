import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class EditProfileForm extends StatefulWidget {
  const EditProfileForm({Key? key}) : super(key: key);

  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  final _firstNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
              title: 'FIRST NAME',
              hint: 'Breanna',
              controller: _firstNameController),
        ),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
              title: 'LAST NAME',
              hint: 'Schinner',
              controller: _firstNameController),
        ),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
              title: 'TITLE',
              hint: 'Product Designer',
              controller: _firstNameController),
        ),
        Padding(
          padding: context.padding(top: 32),
          child: AuthField(
            title: 'LOCATION',
            hint: 'US',
            suffixIcon: const Icon(IconsaxOutline.arrow_down),
            controller: _firstNameController,
          ),
        ),
      ],
    );
  }
}
