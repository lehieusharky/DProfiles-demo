import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddNewExperiencePage extends StatefulWidget {
  const AddNewExperiencePage({Key? key}) : super(key: key);

  @override
  State<AddNewExperiencePage> createState() => _AddNewExperiencePageState();
}

class _AddNewExperiencePageState extends State<AddNewExperiencePage> {
  final _companyNameController = TextEditingController();

  final _titleController = TextEditingController();

  final _endDateController = TextEditingController();

  final _locationController = TextEditingController();

  final _startDateController = TextEditingController();

  final _descriptionController = TextEditingController();

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

          if (state is ProfileAddNewExperienceSuccess) {
            Navigator.pop(context);
            showMyDialog(context,
                title: const Text('Add success'),
                content: const Text('You have add new experience'),
                action: [
                  TextButton(
                      onPressed: () =>
                          Navigator.pop(context, state.experienceModel),
                      child: const Text('OK'))
                ]);
          }
        },
        builder: (context, state) => MyScaffold(
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
                          controller: _locationController,
                          textInputAction: TextInputAction.next,
                          title: 'Location'.toUpperCase(),
                          hint: 'Location',
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
                          validator: (date) =>
                              date.validationForDDMMYYYYY(context),
                        ),
                      ),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                          controller: _endDateController,
                          textInputAction: TextInputAction.next,
                          title: 'End date'.toUpperCase(),
                          hint: appLocal(context).dateTimeFormatddmmyyyyy,
                          validator: (date) =>
                              date.validationForDDMMYYYYY(context),
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

      context.read<ProfileBloc>().add(ProfileAddNewExperience(newData));
    }
  }
}