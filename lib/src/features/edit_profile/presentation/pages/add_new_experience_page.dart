import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/bloc/edit_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
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

  // final _locationController = TextEditingController();

  final _startDateController = TextEditingController();

  final _descriptionController = TextEditingController();

  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector.get<EditProfileBloc>(),
      child: BlocConsumer<EditProfileBloc, EditProfileState>(
        listener: (context, state) {
          if (state is EditProfileLoading) {
            showLoadingDialog(context);
          }

          if (state is EditProfileAddNewExperienceSuccess) {
            Navigator.pop(context);
            showMyDialog(context,
                title:  Text(appLocal(context).addSuccess),
                content:  Text(appLocal(context).youHaveAddNewExperience),
                action: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context, state.experienceModel);
                      },
                      child:  Text(appLocal(context).ok))
                ]);
          }
        },
        builder: (context, state) => MyScaffold(
          useAppBar: true,
          canBack: true,
          horizontalMargin: 20,
          appBarTitle: appLocal(context).experience,
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
                          title: appLocal(context).company.toUpperCase(),
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return appLocal(context).fieldCannotBeEmpty;
                            } else {
                              return null;
                            }
                          },
                          hint: appLocal(context).companyName),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                          controller: _titleController,
                          textInputAction: TextInputAction.next,
                          title: appLocal(context).title.toUpperCase(),
                          hint: appLocal(context).yourTitle,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return appLocal(context).fieldCannotBeEmpty;
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      // Padding(
                      //   padding: context.padding(top: 32),
                      //   child: AuthField(
                      //     controller: _locationController,
                      //     textInputAction: TextInputAction.next,
                      //     title: 'Location'.toUpperCase(),
                      //     hint: 'Location',
                      //     validator: (value) {
                      //       if (value == null || value.isEmpty) {
                      //         return appLocal(context).fieldCannotBeEmpty;
                      //       } else {
                      //         return null;
                      //       }
                      //     },
                      //   ),
                      // ),
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
                            controller: _descriptionController,
                            textInputAction: TextInputAction.done,
                            maxLines: 5,
                            title: appLocal(context).description.toUpperCase(),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return appLocal(context).fieldCannotBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            hint: appLocal(context).description),
                      ),
                      Padding(
                        padding: context.padding(top: 16, bottom: 50),
                        child: AppFlatButton(context).elevatedButton(
                            width: context.width,
                            title: appLocal(context).add,
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
        endDate: _endDateController.text.convertToIOSDateTimeFormat(),
      );

      context.read<EditProfileBloc>().add(EditProfileAddNewExperience(newData));
    }
  }
}
