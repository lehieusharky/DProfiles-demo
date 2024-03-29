import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';

class FormAddBasicInfo extends StatefulWidget {
  const FormAddBasicInfo({super.key});

  @override
  State<FormAddBasicInfo> createState() => _FormAddBasicInfoState();
}

class _FormAddBasicInfoState extends State<FormAddBasicInfo> {
  final _nameController = TextEditingController();
  final _dobController = TextEditingController();
  final _idCardController = TextEditingController();
  final _nationalityController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: context.padding(bottom: 24),
              child: Text(
                'AI Features',
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .labelMedium,
              ),
            ),
            AuthField(
                controller: _nameController,
                title: 'NAME',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                hint: 'Name'),
            Padding(
              padding: context.padding(top: 32),
              child: AuthField(
                controller: _dobController,
                title: 'DOB',
                hint: 'dd/mm/yyyy',
              ),
            ),
            Padding(
              padding: context.padding(top: 32),
              child: AuthField(
                controller: _nationalityController,
                title: 'NATIONALITY',
                hint: 'Vietnam',
              ),
            ),
            Padding(
              padding: context.padding(top: 32),
              child: AuthField(
                controller: _idCardController,
                title: 'ID CARD NUMBER',
                hint: 'Vietnam',
              ),
            ),
            Padding(
              padding: context.padding(vertical: 32),
              child: _buildSendButtons(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSendButtons() {
    return AppFlatButton(context).elevatedButton(
      width: context.width,
      onPressed: () => _continue(context),
      title: 'Continue',
    );
  }

  void _continue(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {}
  }
}
