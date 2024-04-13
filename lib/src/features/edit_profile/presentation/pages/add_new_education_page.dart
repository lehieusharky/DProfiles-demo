import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddNewEducationPage extends StatefulWidget {
  const AddNewEducationPage({Key? key}) : super(key: key);

  @override
  State<AddNewEducationPage> createState() => _AddNewEducationPageState();
}

class _AddNewEducationPageState extends State<AddNewEducationPage> {
  final _nameController = TextEditingController();

  final _degreeController = TextEditingController();

  final _descritptionController = TextEditingController();

  final _startDateController = TextEditingController();

  final _endDateController = TextEditingController();

  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector.get<ProfileBloc>(),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state is ProfileLoading) {
            showLoadingDialog(context);
          }

          if (state is ProfileAddNewEducationSuccess) {
            Navigator.pop(context);
            showMyDialog(context,
                title: const Text('Add success'),
                content: const Text('You have add new education'),
                action: [
                  TextButton(
                      onPressed: () =>
                          Navigator.pop(context, state.educationModel),
                      child: const Text('OK'))
                ]);
          }
        },
        builder: (context, state) => MyScaffold(
          useAppBar: true,
          canBack: true,
          horizontalMargin: 20,
          appBarTitle: 'Education',
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
                          validator: (date) =>
                              date.validationForDDMMYYYYY(context),
                        ),
                      ),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                          controller: _endDateController,
                          textInputAction: TextInputAction.next,
                          title: appLocal(context).endDate.toUpperCase(),
                          hint: appLocal(context).dateTimeFormatddmmyyyyy,
                          validator: (date) =>
                              date.validationForDDMMYYYYY(context),
                        ),
                      ),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                            controller: _descritptionController,
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
        ),
      ),
    );
  }

  void _save(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      final newData = EducationModel(
          schoolName: _nameController.text,
          description: _descritptionController.text,
          degreeID: int.parse(_degreeController.text),
          startDate: _startDateController.text.convertToIOSDateTimeFormat(),
          endDate: _endDateController.text.convertToIOSDateTimeFormat());

      context.read<ProfileBloc>().add(ProfileAddNewEducation(newData));
    }
  }
}
