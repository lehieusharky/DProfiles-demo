import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/utils/domain/entities/ext_experience_entity.dart';
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

  List<ExperienceModel> educations = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateDigitalProfileBloc, CreateDigitalProfileState>(
      listener: (context, state) {
        if (state is AddUserExperienceSuccess) {
          _clearField();
        }

        if(state is SaveUpdatedProfileSuccess) {

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
              if (educations.isNotEmpty)
                Column(
                    children: educations
                        .map(
                          (e) => e.toItem(
                            context,
                            onDelete: () => context
                                .read<CreateDigitalProfileBloc>()
                                .add(DeleteUserExperience(e)),
                          ),
                        )
                        .toList()),
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
                          controller: _companyController,
                          title: appLocal(context).company.toUpperCase(),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          hint: 'Company name'),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                          controller: _jobPositionController,
                          title: appLocal(context).jobPosition.toUpperCase(),
                          hint: 'Position',
                        ),
                      ),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                          controller: _startDateController,
                          title: appLocal(context).startDate.toUpperCase(),
                          hint: 'dd/mm/yyyy',
                        ),
                      ),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                          controller: _endDateController,
                          title: appLocal(context).endDate.toUpperCase(),
                          hint: 'dd/mm/yyyy',
                        ),
                      ),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                          controller: _descrptionController,
                          title: appLocal(context).description.toUpperCase(),
                          hint: 'Description',
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
        startDate: DateTime.now().toString(),
        endDate: DateTime.now().toString(),
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

  void _back(BuildContext context) {
    _changeStep(context, false);
  }

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
