import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:flutter/material.dart';

class FormEducationInfo extends StatefulWidget {
  const FormEducationInfo({super.key});

  @override
  State<FormEducationInfo> createState() => _FormEducationInfoState();
}

class _FormEducationInfoState extends State<FormEducationInfo> {
  final _nameController = TextEditingController();
  final _degreeController = TextEditingController();
  final _fieldOfStudyController = TextEditingController();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: context.padding(bottom: 24),
            child: Text(
              'Education Information',
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.bold)
                  .labelMedium,
            ),
          ),
          Container(
            padding: context.padding(all: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: colorScheme(context).primary),
            ),
            child: Form(
              key: _keyForm,
              child: Column(
                children: [
                  AuthField(
                      controller: _nameController,
                      title: 'SCHOOL',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      hint: 'School name'),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                      controller: _degreeController,
                      title: 'DEGREE',
                      hint: 'dd/mm/yyyy',
                    ),
                  ),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                      controller: _fieldOfStudyController,
                      title: 'FIELD OF STORY',
                      hint: 'Vietnam',
                    ),
                  ),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                      controller: _startDateController,
                      title: 'START DATE',
                      hint: 'dd/mm/yyyy',
                    ),
                  ),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                      controller: _endDateController,
                      title: 'END DATE',
                      hint: 'dd/mm/yyyy',
                    ),
                  ),
                  Padding(
                    padding: context.padding(top: 24),
                    child: _buildUpdateButtons(),
                  ),
                ],
              ),
            ),
          ),
          _buildNavigateButtons(),
        ],
      ),
    );
  }

  Widget _buildUpdateButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AppOutlineButton(context).elevatedButton(
          width: context.sizeWidth(100),
          onPressed: () => _continue(context),
          title: 'Delete',
        ),
        AppFlatButton(context).elevatedButton(
          width: context.sizeWidth(100),
          onPressed: () => _continue(context),
          title: 'Add',
        ),
      ],
    );
  }

  Widget _buildNavigateButtons() {
    return Padding(
      padding: context.padding(top: 32),
      child: Row(
        children: [
          Flexible(
            child: AppOutlineButton(context).elevatedButton(
              width: context.width,
              onPressed: () => _continue(context),
              title: 'Back',
            ),
          ),
          Flexible(
            child: AppFlatButton(context).elevatedButton(
              width: context.width,
              onPressed: () => _continue(context),
              title: 'Next',
            ),
          ),
        ],
      ),
    );
  }

  void _continue(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {}
  }
}
