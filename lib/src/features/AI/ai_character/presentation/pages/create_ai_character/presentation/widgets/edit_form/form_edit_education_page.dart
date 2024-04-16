import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FormEditEducationPage extends StatefulWidget {
  final EducationModel educationModel;
  const FormEditEducationPage({Key? key, required this.educationModel})
      : super(key: key);

  @override
  State<FormEditEducationPage> createState() => _FormEditEducationPageState();
}

class _FormEditEducationPageState extends State<FormEditEducationPage> {
  late TextEditingController _nameController;

  late TextEditingController _degreeController;

  late TextEditingController _descriptionController;

  late TextEditingController _startDateController;

  late TextEditingController _endDateController;

  final _keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    _nameController =
        TextEditingController(text: widget.educationModel.schoolName);
    _degreeController =
        TextEditingController(text: widget.educationModel.degreeID.toString());
    _descriptionController =
        TextEditingController(text: widget.educationModel.description);
    _startDateController = TextEditingController(
        text: widget.educationModel.startDate.convertToDDMMYYFormat());
    _endDateController = TextEditingController(
        text: widget.educationModel.endDate.convertToDDMMYYFormat());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      useAppBar: true,
      canBack: true,
      horizontalMargin: 20,
      appBarTitle: 'Edit Education',
      body: SingleChildScrollView(
        child: Column(
          children: [
            context.sizedBox(height: 32),
            Form(
              key: _keyForm,
              child: Column(
                children: [
                  AuthField(
                      controller: _nameController,
                      title: 'School'.toUpperCase(),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return appLocal(context).fieldCannotBeEmpty;
                        } else {
                          return null;
                        }
                      },
                      hint: appLocal(context).schoolName),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                      controller: _degreeController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      title: 'Degree'.toUpperCase(),
                      hint: 'Degree',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
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
                      controller: _startDateController,
                      textInputAction: TextInputAction.next,
                      title: appLocal(context).startDate.toUpperCase(),
                      hint: appLocal(context).dateTimeFormatddmmyyyyy,
                      validator: (date) => date.validationForDDMMYYYYY(context),
                    ),
                  ),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                      controller: _endDateController,
                      textInputAction: TextInputAction.next,
                      title: appLocal(context).endDate.toUpperCase(),
                      hint: appLocal(context).dateTimeFormatddmmyyyyy,
                      validator: (date) => date.validationForDDMMYYYYY(context),
                    ),
                  ),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                        controller: _descriptionController,
                        textInputAction: TextInputAction.done,
                        title: 'Description'.toUpperCase(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return appLocal(context).fieldCannotBeEmpty;
                          } else {
                            return null;
                          }
                        },
                        hint: 'Description'),
                  ),
                  Padding(
                    padding: context.padding(top: 16, bottom: 50),
                    child: AppFlatButton(context).elevatedButton(
                        width: context.width,
                        title: 'Save',
                        onPressed: () => _save(context)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _save(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      final updatedData = EducationModel(
          schoolName: _nameController.text,
          description: _descriptionController.text,
          degreeID: int.parse(_degreeController.text),
          startDate: _startDateController.text.convertToIOSDateTimeFormat(),
          endDate: _endDateController.text.convertToIOSDateTimeFormat());

      Navigator.pop(context, updatedData);
    }
  }
}
