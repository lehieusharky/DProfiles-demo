import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_experience_model.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormExperience extends StatefulWidget {
  const FormExperience({super.key});

  @override
  State<FormExperience> createState() => _FormExperienceState();
}

class _FormExperienceState extends State<FormExperience> {
  final _companyController = TextEditingController();
  final _jobPositionController = TextEditingController();

  final _startDateController = TextEditingController();
  final _descrptionController = TextEditingController();
  final _endDateController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  MyLoading? myLoading;

  List<ExperienceModel> experiences = [];

  @override
  Widget build(BuildContext context) {
    experiences = context.watch<CreateDigitalProfileBloc>().experiences;

    return BlocConsumer<CreateDigitalProfileBloc, CreateDigitalProfileState>(
      listener: (context, state) {
        if (state is AddUserExperienceSuccess) {
          _clearField();
        }

        if (state is SaveUpdatedProfileSuccess) {
          context
              .read<CreateDigitalProfileBloc>()
              .add(const CreateDigitalProfile());
        }

        if (state is UpdateDigitalProfileSuccess) {
          context.router.push(const CreateDigitalProfileSuccessRoute());
        }
      },
      builder: (context, state) {
        myLoading =
            (state is CreateDigitalProfileLoading) ? const MyLoading() : null;
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: context.padding(bottom: 24),
                child: Text(
                  appLocal(context).experience,
                  style: AppFont()
                      .fontTheme(context, weight: FontWeight.bold)
                      .labelMedium,
                ),
              ),
              if (experiences.isNotEmpty)
                Column(
                    children: experiences
                        .map(
                          (e) => e.toWidget(
                            context,
                            onDelete: () => context
                                .read<CreateDigitalProfileBloc>()
                                .add(DeleteUserExperience(e)),
                          ),
                        )
                        .toList()),
              Padding(
                padding: context.padding(top: 12, bottom: 32),
                child: Container(
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
                          controller: _companyController,
                          title: appLocal(context).company.toUpperCase(),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          validator: (company) {
                            if (company == null || company.isEmpty) {
                              return appLocal(context).fieldCannotBeEmpty;
                            } else {
                              return null;
                            }
                          },
                          hint: appLocal(context).companyName,
                        ),
                        Padding(
                          padding: context.padding(top: 32),
                          child: AuthField(
                            controller: _jobPositionController,
                            title: appLocal(context).jobPosition.toUpperCase(),
                            textInputAction: TextInputAction.next,
                            hint: appLocal(context).position,
                          ),
                        ),
                        Padding(
                          padding: context.padding(top: 32),
                          child: AuthField(
                            controller: _startDateController,
                            title: appLocal(context).startDate.toUpperCase(),
                            textInputAction: TextInputAction.next,
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
                            controller: _descrptionController,
                            textInputAction: TextInputAction.done,
                            title: appLocal(context).description.toUpperCase(),
                            hint: appLocal(context).description,
                            maxLines: 4,
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
              ),
              _buildNavigateButtons(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildUpdateButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AppOutlineButton(context).elevatedButton(
          width: context.sizeWidth(100),
          onPressed: () => _delete(context),
          title: appLocal(context).delete.toUpperCase(),
        ),
        context.sizedBox(width: 16),
        AppFlatButton(context).elevatedButton(
          width: context.sizeWidth(100),
          onPressed: () => _add(context),
          title: appLocal(context).add.toUpperCase(),
          child: myLoading,
        ),
      ],
    );
  }

  void _delete(BuildContext context) {}

  void _add(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      final newExperience = ExperienceModel(
        companyName: _companyController.text.trim(),
        startDate: _startDateController.text.convertToIOSDateTimeFormat(),
        endDate: _endDateController.text.convertToIOSDateTimeFormat(),
        description: _descrptionController.text,
        jobTitle: _jobPositionController.text,
      );

      context
          .read<CreateDigitalProfileBloc>()
          .add(AddUserExperience(newExperience));
    }
  }

  Widget _buildNavigateButtons() {
    return Padding(
      padding: context.padding(top: 32),
      child: Row(
        children: [
          Flexible(
            child: AppOutlineButton(context).elevatedButton(
              width: context.width,
              onPressed: () => _back(context),
              title: appLocal(context).back.toUpperCase(),
            ),
          ),
          context.sizedBox(width: 16),
          Flexible(
            child: AppFlatButton(context).elevatedButton(
              width: context.width,
              onPressed: () => _continue(context),
              title: appLocal(context).save.toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }

  void _back(BuildContext context) => _changeStep(context, false);

  void _continue(BuildContext context) {
    context.read<CreateDigitalProfileBloc>().add(const SaveUpdatedProfile());
  }

  void _changeStep(BuildContext context, bool isNext) => context
      .read<CreateDigitalProfileBloc>()
      .add(ChangeCreationStep(isNext: isNext));

  void _clearField() {
    _companyController.clear();
    _jobPositionController.clear();
    _startDateController.clear();
    _descrptionController.clear();
    _endDateController.clear();
  }
}
