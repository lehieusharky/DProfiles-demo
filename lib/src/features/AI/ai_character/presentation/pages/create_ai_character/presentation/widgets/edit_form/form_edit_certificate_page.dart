import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FormEditCertificatePage extends StatefulWidget {
  final CertificateModel certificateModel;
  const FormEditCertificatePage({Key? key, required this.certificateModel})
      : super(key: key);

  @override
  State<FormEditCertificatePage> createState() =>
      _FormEditCertificatePageState();
}

class _FormEditCertificatePageState extends State<FormEditCertificatePage> {
  late TextEditingController _nameController;

  late TextEditingController _organizationController;

  late TextEditingController _credentialIDController;

  late TextEditingController _dateController;

  late TextEditingController _linkController;

  final _keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.certificateModel.name);
    _organizationController =
        TextEditingController(text: widget.certificateModel.organization);
    _credentialIDController =
        TextEditingController(text: widget.certificateModel.credentialId);
    _dateController = TextEditingController(
        text: widget.certificateModel.date.convertToDDMMYYYYDateTimeFormat());

    _linkController = TextEditingController(text: widget.certificateModel.link);
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      useAppBar: true,
      canBack: true,
      horizontalMargin: 20,
      appBarTitle: 'Edit Certificates',
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
                      title: 'Name'.toUpperCase(),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return appLocal(context).fieldCannotBeEmpty;
                        } else {
                          return null;
                        }
                      },
                      hint: 'Certificate Name'),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                      controller: _organizationController,
                      textInputAction: TextInputAction.next,
                      title: 'Organization'.toUpperCase(),
                      hint: 'Organization name',
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
                      controller: _dateController,
                      textInputAction: TextInputAction.next,
                      title: appLocal(context).startDate.toUpperCase(),
                      hint: appLocal(context).dateTimeFormatddmmyyyyy,
                      validator: (date) => date.validationForDDMMYYYYY(context),
                    ),
                  ),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                        controller: _credentialIDController,
                        textInputAction: TextInputAction.next,
                        title: 'Credential ID'.toUpperCase(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return appLocal(context).fieldCannotBeEmpty;
                          } else {
                            return null;
                          }
                        },
                        hint: 'Credential ID'),
                  ),
                  Padding(
                    padding: context.padding(top: 32),
                    child: AuthField(
                        controller: _linkController,
                        textInputAction: TextInputAction.done,
                        title: 'Credential URL'.toUpperCase(),
                        validator: (value) => value.urlValidation(context),
                        hint: 'Credential URL'),
                  ),
                  Padding(
                    padding: context.padding(top: 16, bottom: 50),
                    child: AppFlatButton(context).elevatedButton(
                        width: context.width,
                        title: 'Save',
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
      final newData = widget.certificateModel.copyWith(
          name: _nameController.text,
          organization: _organizationController.text,
          date: _dateController.text.convertToIOSDateTimeFormat(),
          credentialId: _credentialIDController.text,
          link: _linkController.text);

      Navigator.pop(context, newData);
    }
  }
}
