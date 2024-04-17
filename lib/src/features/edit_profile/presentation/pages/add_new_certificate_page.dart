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
                title: const Text('Add success'),
                content: const Text('You have add new certificate'),
                action: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context, state.certificateModel);
                      },
                      child: const Text('OK'))
                ]);
          }
        },
        builder: (context, state) => MyScaffold(
          useAppBar: true,
          canBack: true,
          horizontalMargin: 20,
          appBarTitle: 'Certificates',
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
                          hint: appLocal(context).schoolName),
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
                          title: 'Date'.toUpperCase(),
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
                            validator: (value) {
                              final _urlPattern = RegExp(
                                r'^https:\/\/www\.[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-]+$',
                              );
                              if (value == null || value.isEmpty) {
                                return appLocal(context).fieldCannotBeEmpty;
                              } else if (!_urlPattern.hasMatch(value)) {
                                return 'URL starting with https://www.';
                              } else {
                                return null;
                              }
                            },
                            hint: 'Credential URL'),
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
