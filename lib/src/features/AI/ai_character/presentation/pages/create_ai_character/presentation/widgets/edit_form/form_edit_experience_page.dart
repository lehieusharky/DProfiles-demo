import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FormEditExperiencePage extends StatefulWidget {
  final ExperienceModel experienceModel;
  const FormEditExperiencePage({Key? key, required this.experienceModel})
      : super(key: key);

  @override
  State<FormEditExperiencePage> createState() => _FormEditExperiencePageState();
}

class _FormEditExperiencePageState extends State<FormEditExperiencePage> {
  late TextEditingController _companyNameController;

  late TextEditingController _titleController;

  late TextEditingController _endDateController;

  late TextEditingController _startDateController;

  late TextEditingController _descriptionController;

  final _keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _companyNameController =
        TextEditingController(text: widget.experienceModel.companyName);
    _titleController =
        TextEditingController(text: widget.experienceModel.jobTitle);
    _endDateController = TextEditingController(
        text: widget.experienceModel.endDate.convertToDDMMYYFormat());

    _startDateController = TextEditingController(
        text: widget.experienceModel.startDate.convertToDDMMYYFormat());
    _descriptionController =
        TextEditingController(text: widget.experienceModel.description);
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      useAppBar: true,
      canBack: true,
      horizontalMargin: 20,
      appBarTitle: 'Experience',
      body: SingleChildScrollView(
        child: Column(
          children: [
            context.sizedBox(height: 32),
            Form(
              key: _keyForm,
              child: Column(
                children: [
                  AuthField(
                      controller: _companyNameController,
                      title: 'Company'.toUpperCase(),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return appLocal(context).fieldCannotBeEmpty;
                        } else {
                          return null;
                        }
                      },
                      hint: 'Company name'),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                      controller: _titleController,
                      textInputAction: TextInputAction.next,
                      title: 'Title'.toUpperCase(),
                      hint: 'Your title',
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
                      title: 'Start date'.toUpperCase(),
                      hint: appLocal(context).dateTimeFormatddmmyyyyy,
                      validator: (date) => date.validationForDDMMYYYYY(context),
                    ),
                  ),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                      controller: _endDateController,
                      textInputAction: TextInputAction.next,
                      title: 'End date'.toUpperCase(),
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
                        title: 'Add',
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
      final newData = ExperienceModel(
        companyName: _companyNameController.text,
        jobTitle: _titleController.text,
        description: _descriptionController.text,
        startDate: _startDateController.text.convertToIOSDateTimeFormat(),
        // endDate: _endDateController.text.convertToIOSDateTimeFormat(),
      );

      Navigator.pop(context, newData);
    }
  }
}
