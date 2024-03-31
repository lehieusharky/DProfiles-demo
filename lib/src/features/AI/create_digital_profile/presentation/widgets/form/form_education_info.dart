import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/models/add_user_education_model.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/domain/entities/ext_education_entity.dart';
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

  List<EducationModel> educations = [];

  MyLoading? myLoading;

  @override
  Widget build(BuildContext context) {
    context.read<CreateDigitalProfileBloc>().add(const GetUserEducations());

    return BlocConsumer<CreateDigitalProfileBloc, CreateDigitalProfileState>(
      listener: (context, state) {
        if (state is GetUserEducationsSuccess) {
          final data = state.response.data as List;

          educations = data.map((e) => EducationModel.fromJson(e)).toList();
        }

        if (state is AddUserEducationSuccess) {
          educations.add(EducationModel.fromJson(state.response.data));
        }
      },
      builder: (context, state) {
        myLoading =
            (state is CreateDigitalProfileLoading) ? const MyLoading() : null;
        return Column(
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
            if (educations.isNotEmpty)
              Expanded(
                  child: ListView(
                      children:
                          educations.map((e) => e.toItem(context)).toList())),
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
                        controller: _schoolNameController,
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
            _buildNavigateButtons(context),
          ],
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
          title: 'Delete',
        ),
        context.sizedBox(width: 16),
        AppFlatButton(context).elevatedButton(
          width: context.sizeWidth(100),
          onPressed: () => _add(context),
          title: 'Add',
          child: myLoading,
        ),
      ],
    );
  }

  Widget _buildNavigateButtons(BuildContext context) {
    return Padding(
      padding: context.padding(top: 32),
      child: Row(
        children: [
          Flexible(
            child: AppOutlineButton(context).elevatedButton(
              width: context.width,
              onPressed: () => _back(context),
              title: 'Back',
            ),
          ),
          context.sizedBox(width: 16),
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

  void _delete(BuildContext context) {}

  void _add(BuildContext context) {
    context
        .read<CreateDigitalProfileBloc>()
        .add(AddUserEducation(EducationModel(
          schoolName: _schoolNameController.text.trim(),
          startDate: DateTime.now().toString(),
          endDate: DateTime.now().toString(),
        )));
  }

  void _back(BuildContext context) {
    context
        .read<CreateDigitalProfileBloc>()
        .add(const ChangeCreationStep(isNext: false));
  }

  void _continue(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      context
          .read<CreateDigitalProfileBloc>()
          .add(const ChangeCreationStep(isNext: true));
    }
  }
}
