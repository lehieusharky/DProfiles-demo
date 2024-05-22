import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/bloc/edit_profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/utils/data/models/meta_language_model.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormLanguage extends StatefulWidget {
  const FormLanguage({Key? key}) : super(key: key);

  @override
  State<FormLanguage> createState() => _FormLanguageState();
}

class _FormLanguageState extends State<FormLanguage> {
  late TextEditingController _languageController;
  final keyForm = GlobalKey<FormState>();

  List<MetaLanguageModel>? metaLanguages;

  @override
  void initState() {
    super.initState();

    _languageController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileBloc, EditProfileState>(
      listener: (context, state) {
        if (state is EditProfileLoading) {
          showLoadingDialog(context);
        }

        if (state is EditProfileGetMetaLanguageSuccess) {
          metaLanguages = state.languages;
        }

        if (state is EditProfileAddNewLanguageSuccess) {
          Navigator.pop(context);
          showMyDialog(context,
              title:  Text(appLocal(context).addSuccess),
              content:  Text(appLocal(context).youHaveAddNewLanguage),
              action: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context, state.languageModel);
                    },
                    child:  Text(appLocal(context).ok))
              ]);
        }
      },
      builder: (context, state) => Padding(
        padding: context.padding(top: 16),
        child: Form(
          key: keyForm,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  title: appLocal(context).language,
                  hint: appLocal(context).addNewLanguage,
                  keyboardType: TextInputType.number,
                  autoFocus: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return appLocal(context).fieldCannotBeEmpty;
                    }
                    if (int.parse(value) < 0 || int.parse(value) > 78) {
                      return appLocal(context).yourChooseIsInvalid;
                    } else {
                      return null;
                    }
                  },
                  controller: _languageController,
                ),
              ),
              if (metaLanguages != null)
                Padding(
                  padding: context.padding(vertical: 5),
                  child: Container(
                    height: context.sizeHeight(200),
                    padding: context.padding(vertical: 10, horizontal: 12),
                    decoration: BoxDecoration(
                      color:
                          colorScheme(context).outlineVariant.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: metaLanguages!
                            .map((e) => Text("${e.id} - ${e.name}"))
                            .toList(),
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: context.padding(top: 24, bottom: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: AppOutlineButton(context).elevatedButton(
                        onPressed: () => Navigator.pop(context),
                        title: appLocal(context).cancel,
                      ),
                    ),
                    context.sizedBox(width: 16),
                    Expanded(
                      child: MyButton(
                        onPressed: () => _save(),
                        title: appLocal(context).save,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _save() {
    if (keyForm.currentState?.validate() ?? false) {
      context.read<EditProfileBloc>().add(EditProfileAddNewLanguage(
          int.parse(_languageController.text.trim())));
    }
  }
}
