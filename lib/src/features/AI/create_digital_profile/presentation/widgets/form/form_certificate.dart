import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_certificate_model.dart';
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
  final _numberController = TextEditingController();
  final _issuedByController = TextEditingController();
  final _fromController = TextEditingController();
  final _toController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  MyLoading? myLoading;

  List<CertificateModel> certificates = [];

  @override
  Widget build(BuildContext context) {
    certificates = context.watch<CreateDigitalProfileBloc>().certificates;

    return BlocConsumer<CreateDigitalProfileBloc, CreateDigitalProfileState>(
        listener: (context, state) {
      if (state is AddUserCertificateSuccess) {
        _clearField();
      }
    }, builder: (context, state) {
      myLoading =
          (state is CreateDigitalProfileLoading) ? const MyLoading() : null;

      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: context.padding(bottom: 24),
              child: Text(
                appLocal(context).certificate,
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .labelMedium,
              ),
            ),
            if (certificates.isNotEmpty)
              Column(
                  children: certificates
                      .map(
                        (e) => e.toWidget(
                          context,
                          onDelete: () => context
                              .read<CreateDigitalProfileBloc>()
                              .add(DeleteUserCertificate(e)),
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
                          controller: _nameController,
                          title: 'NAME',
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          hint: 'School name'),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                          controller: _numberController,
                          title: 'NUMBER',
                          hint: '123321',
                        ),
                      ),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                          controller: _issuedByController,
                          title: 'ISSUED BY',
                          hint: 'School A',
                        ),
                      ),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                          controller: _fromController,
                          title: 'FROM',
                          hint: 'dd/mm/yyyy',
                        ),
                      ),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                          controller: _toController,
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
            ),
            _buildNavigateButtons(),
          ],
        ),
      );
    });
  }

  Widget _buildUpdateButtons(BuildContext context) {
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

  Widget _buildNavigateButtons() {
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

  void _delete(BuildContext context) {}

  void _back(BuildContext context) {
    _changeStep(context, false);
  }

  void _continue(BuildContext context) {
    _changeStep(context, true);
  }

  void _changeStep(BuildContext context, bool isNext) => context
      .read<CreateDigitalProfileBloc>()
      .add(ChangeCreationStep(isNext: isNext));

  void _add(BuildContext context) {
    if (_keyForm.currentState?.validate() ?? false) {
      context
          .read<CreateDigitalProfileBloc>()
          .add(AddUserCertificate(CertificateModel(
            name: _nameController.text.trim(),
          )));
    }
  }

  void _clearField() {
    _nameController.clear();
    _numberController.clear();
    _issuedByController.clear();
    _fromController.clear();
    _toController.clear();
  }
}
