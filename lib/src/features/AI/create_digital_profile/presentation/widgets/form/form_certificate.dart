import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/utils/domain/entities/ext_certificate_entity.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormCertificate extends StatefulWidget {
  const FormCertificate({super.key});

  @override
  State<FormCertificate> createState() => _FormCertificateState();
}

class _FormCertificateState extends State<FormCertificate> {
  final _nameController = TextEditingController();
  final _degreeController = TextEditingController();
  final _fieldOfStudyController = TextEditingController();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  List<CertificateModel> certificates = [];

  @override
  Widget build(BuildContext context) {
    context.read<CreateDigitalProfileBloc>().add(const GetUserCertificates());

    return BlocConsumer<CreateDigitalProfileBloc, CreateDigitalProfileState>(
      listener: (context, state) {
        if (state is GetUserCertificatesSuccess) {
          final data = state.response.data as List;

          certificates = data.map((e) => CertificateModel.fromJson(e)).toList();
        }
      },
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: ListView(
                  children:
                      certificates.map((e) => e.toItem(context)).toList())),

          Padding(
            padding: context.padding(vertical: 24),
            child: Text(
              'Certificate',
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
                      title: 'NAME',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      hint: 'School name'),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                      controller: _degreeController,
                      title: 'NUMBER',
                      hint: '123321',
                    ),
                  ),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                      controller: _fieldOfStudyController,
                      title: 'ISSUED BY',
                      hint: 'School A',
                    ),
                  ),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                      controller: _startDateController,
                      title: 'FROM',
                      hint: 'dd/mm/yyyy',
                    ),
                  ),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                      controller: _endDateController,
                      title: 'TO',
                      hint: 'dd/mm/yyyy',
                    ),
                  ),
                  Padding(
                    padding: context.padding(top: 24),
                    child: _buildUpdateButtons(context),
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

  Widget _buildUpdateButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AppOutlineButton(context).elevatedButton(
          width: context.sizeWidth(100),
          onPressed: () => _continue(context),
          title: 'Delete',
        ),
        context.sizedBox(width: 16),
        AppFlatButton(context).elevatedButton(
          width: context.sizeWidth(100),
          onPressed: () => _add(context),
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

  void _back(BuildContext context) {
    context
        .read<CreateDigitalProfileBloc>()
        .add(const ChangeCreationStep(isNext: false));
  }

  void _continue(BuildContext context) {
    context
        .read<CreateDigitalProfileBloc>()
        .add(const ChangeCreationStep(isNext: true));
  }

  void _add(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      context
          .read<CreateDigitalProfileBloc>()
          .add(AddUserCertificate(CertificateModel(
            name: _nameController.text.trim(),
          )));
    }
  }
}
