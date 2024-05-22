import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/bloc/edit_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddNewCertificatePage extends StatefulWidget {
  const AddNewCertificatePage({Key? key}) : super(key: key);

  @override
  State<AddNewCertificatePage> createState() => _AddNewCertificatePageState();
}

class _AddNewCertificatePageState extends State<AddNewCertificatePage> {
  final _nameController = TextEditingController();

  final _organizationController = TextEditingController();

  final _credentialIDController = TextEditingController();

  final _dateController = TextEditingController();

  final _linkController = TextEditingController();

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

          if (state is EditProfileAddNewCertificateSuccess) {
            Navigator.pop(context);
            showMyDialog(context,
                title:  Text(appLocal(context).addSuccess),
                content:  Text(appLocal(context).youHaveAddNewCertificate),
                action: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context, state.certificateModel);
                      },
                      child: Text(appLocal(context).ok))
                ]);
          }
        },
        builder: (context, state) => MyScaffold(
          useAppBar: true,
          canBack: true,
          horizontalMargin: 20,
          appBarTitle: appLocal(context).certificates,
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
                          title: appLocal(context).name,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return appLocal(context).fieldCannotBeEmpty;
                            } else {
                              return null;
                            }
                          },
                          hint: appLocal(context).certificateName),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                          controller: _organizationController,
                          textInputAction: TextInputAction.next,
                          title: appLocal(context).organization.toUpperCase(),
                          hint: appLocal(context).organizationName,
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
                          title: appLocal(context).date.toUpperCase(),
                          hint: appLocal(context).dateTimeFormatddmmyyyyy,
                          validator: (date) =>
                              date.validationForDDMMYYYYY(context),
                        ),
                      ),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                            controller: _credentialIDController,
                            textInputAction: TextInputAction.next,
                            title: appLocal(context).credentialID.toUpperCase(),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return appLocal(context).fieldCannotBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            hint: appLocal(context).credentialID),
                      ),
                      Padding(
                        padding: context.padding(top: 32),
                        child: AuthField(
                            controller: _linkController,
                            textInputAction: TextInputAction.done,
                            title: appLocal(context).credentialURL.toUpperCase(),
                            validator: (value) => value.urlValidation(context),
                            hint: appLocal(context).credentialURL),
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
      final newData = CertificateModel(
          name: _nameController.text,
          organization: _organizationController.text,
          date: _dateController.text.convertToIOSDateTimeFormat(),
          credentialId: _credentialIDController.text,
          link: _linkController.text);

      context
          .read<EditProfileBloc>()
          .add(EditProfileAddNewCertificate(newData));
    }
  }
}
