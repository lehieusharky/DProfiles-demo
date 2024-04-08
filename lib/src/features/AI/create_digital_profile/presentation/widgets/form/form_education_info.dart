import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_education_model.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormEducationInfo extends StatefulWidget {
  const FormEducationInfo({super.key});

  @override
  State<FormEducationInfo> createState() => _FormEducationInfoState();
}

class _FormEducationInfoState extends State<FormEducationInfo> {
  final _schoolNameController = TextEditingController();
  final _degreeController = TextEditingController();
  final _fieldOfStudyController = TextEditingController();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  MyLoading? myLoading;

  List<EducationModel> educations = [];

  @override
  Widget build(BuildContext context) {
    educations = context.watch<CreateDigitalProfileBloc>().educations;

    return BlocConsumer<CreateDigitalProfileBloc, CreateDigitalProfileState>(
      listener: (context, state) {
        if (state is AddUserEducationSuccess) {
          _clearField();
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
                  appLocal(context).educationInformation.toUpperCase(),
                  style: AppFont()
                      .fontTheme(context, weight: FontWeight.bold)
                      .labelMedium,
                ),
              ),
              if (educations.isNotEmpty)
                Column(
                    children: educations
                        .map(
                          (e) => e.toWidget(
                            context,
                            onDelete: () => context
                                .read<CreateDigitalProfileBloc>()
                                .add(DeleteUserEducation(e)),
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
                            controller: _schoolNameController,
                            title: appLocal(context).school.toUpperCase(),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            hint: appLocal(context).schoolName),
                        Padding(
                          padding: context.padding(top: 32),
                          child: AuthField(
                            controller: _degreeController,
                            textInputAction: TextInputAction.next,
                            title: appLocal(context).degree.toUpperCase(),
                            hint: appLocal(context).dateTimeFormatddmmyyyyy,
                            validator: (date) =>
                                date.validationForDDMMYYYYY(context),
                          ),
                        ),
                        Padding(
                          padding: context.padding(top: 32),
                          child: AuthField(
                            controller: _fieldOfStudyController,
                            textInputAction: TextInputAction.next,
                            title: appLocal(context).fieldOfStudy.toUpperCase(),
                            hint: appLocal(context).yourFieldOfStudy,
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
                          padding: context.padding(top: 24),
                          child: _buildUpdateButtons(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              _buildNavigateButtons(context),
            ],
          ),
        );
      },
    );
  }

  void _clearField() {
    _schoolNameController.clear();
    _degreeController.clear();
    _fieldOfStudyController.clear();
    _startDateController.clear();
    _endDateController.clear();
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

  Widget _buildNavigateButtons(BuildContext context) {
    return Row(
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
            title: appLocal(context).nextButton.toUpperCase(),
          ),
        ),
      ],
    );
  }

  void _delete(BuildContext context) => _clearField();

  void _add(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      final newEducation = EducationModel(
        schoolName: _schoolNameController.text.trim(),
        startDate: _startDateController.text.convertToIOSDateTimeFormat(),
        endDate: _endDateController.text.convertToIOSDateTimeFormat(),
        major: _degreeController.text.trim(),
        description: _fieldOfStudyController.text.trim(),
      );

      context
          .read<CreateDigitalProfileBloc>()
          .add(AddUserEducation(newEducation));
    }
  }

  void _back(BuildContext context) => _changeStep(context, false);

  void _continue(BuildContext context) => _changeStep(context, true);

  void _changeStep(BuildContext context, bool isNext) => context
      .read<CreateDigitalProfileBloc>()
      .add(ChangeCreationStep(isNext: isNext));
}
