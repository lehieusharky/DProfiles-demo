import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/bloc/edit_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormEditBasicInfo extends StatefulWidget {
  const FormEditBasicInfo({super.key});

  @override
  State<FormEditBasicInfo> createState() => _FormEditBasicInfoState();
}

class _FormEditBasicInfoState extends State<FormEditBasicInfo> {
  late TextEditingController _usernameController = TextEditingController();
  late TextEditingController _jobTitleController = TextEditingController();
  late TextEditingController _nationalityController = TextEditingController();
  late TextEditingController _instagramController = TextEditingController();
  late TextEditingController _xController = TextEditingController();
  late TextEditingController _telegramController = TextEditingController();
  late TextEditingController _whatappController = TextEditingController();
  late TextEditingController _linkedinController = TextEditingController();
  late TextEditingController _firstNameController = TextEditingController();
  late TextEditingController _lastNameController = TextEditingController();
  late TextEditingController _headlineController = TextEditingController();
  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<EditProfileBloc, EditProfileState, UserInfoModel?>(
      selector: (state) {
        if (state is EditProfileGetUserInfoSuccess) {
          _hanleTextController(state);
          return state.userInfoModel;
        }

        if (state is EditProfileLoading) {
          showLoadingDialog(context);
        }

        if (state is EditProfileUpdateUserInfoSuccess) {
          Navigator.pop(context);
          Navigator.pop(context);
        }

        return null;
      },
      builder: (context, state) {
        if (state == null) {
          return const MyShimmer(count: 3);
        }
        return Padding(
          padding: context.padding(top: 16),
          child: Form(
            key: keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AuthField(
                  title: 'USERNAME',
                  hint: 'Your Username',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  autoFocus: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return appLocal(context).fieldCannotBeEmpty;
                    } else {
                      return null;
                    }
                  },
                  controller: _usernameController,
                ),
                Padding(
                  padding: context.padding(top: 32),
                  child: AuthField(
                    title: 'FIRST NAME',
                    hint: 'Your First Name',
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    controller: _firstNameController,
                  ),
                ),
                Padding(
                  padding: context.padding(top: 32),
                  child: AuthField(
                    title: 'LAST NAME',
                    hint: 'Your Last Name',
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    controller: _lastNameController,
                  ),
                ),
                Padding(
                  padding: context.padding(top: 32),
                  child: AuthField(
                    title: 'HEADLINE',
                    hint: 'Headline',
                    maxLines: 3,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    controller: _headlineController,
                  ),
                ),
                Padding(
                  padding: context.padding(top: 32),
                  child: AuthField(
                    title: 'JOB TITLE',
                    hint: 'Your job title',
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return appLocal(context).fieldCannotBeEmpty;
                      } else {
                        return null;
                      }
                    },
                    controller: _jobTitleController,
                  ),
                ),
                Padding(
                  padding: context.padding(top: 32),
                  child: AuthField(
                    title: 'NATIONALITY',
                    hint: 'Your nationality',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return appLocal(context).fieldCannotBeEmpty;
                      } else {
                        return null;
                      }
                    },
                    controller: _nationalityController,
                  ),
                ),
                Padding(
                  padding: context.padding(top: 32),
                  child: AuthField(
                      controller: _instagramController,
                      textInputAction: TextInputAction.next,
                      title: 'INSTAGRAM',
                      hint: 'Instagram URL'),
                ),
                Padding(
                  padding: context.padding(top: 32),
                  child: AuthField(
                      controller: _xController,
                      textInputAction: TextInputAction.next,
                      title: 'X',
                      hint: 'X URL'),
                ),
                Padding(
                  padding: context.padding(top: 32),
                  child: AuthField(
                      controller: _telegramController,
                      textInputAction: TextInputAction.next,
                      title: 'TELEGRAM',
                      hint: 'Telegram URL'),
                ),
                Padding(
                  padding: context.padding(top: 32),
                  child: AuthField(
                      controller: _whatappController,
                      textInputAction: TextInputAction.next,
                      title: 'WHATSAPP',
                      hint: 'Whatsapp URL'),
                ),
                Padding(
                  padding: context.padding(top: 32),
                  child: AuthField(
                      controller: _linkedinController,
                      textInputAction: TextInputAction.done,
                      title: 'LINKEDIN',
                      hint: 'Linkedin URL'),
                ),
                Padding(
                  padding: context.padding(top: 24, bottom: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: AppOutlineButton(context).elevatedButton(
                          onPressed: () => Navigator.pop(context),
                          title: 'Cancel',
                        ),
                      ),
                      context.sizedBox(width: 16),
                      Expanded(
                        child: MyButton(
                          onPressed: () => _save(state),
                          title: 'Save',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _hanleTextController(EditProfileGetUserInfoSuccess state) {
    _usernameController =
        TextEditingController(text: state.userInfoModel.username);
    _jobTitleController =
        TextEditingController(text: state.userInfoModel.jobTitle);
    _nationalityController =
        TextEditingController(text: state.userInfoModel.nationality);
    _instagramController =
        TextEditingController(text: state.userInfoModel.instagramUrl);
    _xController = TextEditingController(text: state.userInfoModel.twitterUrl);
    _telegramController =
        TextEditingController(text: state.userInfoModel.telegramUrl);
    _whatappController =
        TextEditingController(text: state.userInfoModel.whatsappUrl);
    _linkedinController =
        TextEditingController(text: state.userInfoModel.linkedinUrl);
    _firstNameController =
        TextEditingController(text: state.userInfoModel.firstName);
    _lastNameController =
        TextEditingController(text: state.userInfoModel.lastName);
    _headlineController =
        TextEditingController(text: state.userInfoModel.headline);
  }

  void _save(UserInfoModel userInfo) {
    if (keyForm.currentState?.validate() ?? false) {
      userInfo = userInfo.copyWith(
        username: _usernameController.text.trim(),
        jobTitle: _jobTitleController.text.trim(),
        nationality: _nationalityController.text.trim(),
        twitterUrl:
            _xController.text.isNotEmpty ? _xController.text.trim() : null,
        whatsappUrl: _whatappController.text.isNotEmpty
            ? _whatappController.text.trim()
            : null,
        telegramUrl: _telegramController.text.isNotEmpty
            ? _telegramController.text.trim()
            : null,
        linkedinUrl: _linkedinController.text.isNotEmpty
            ? _linkedinController.text.trim()
            : null,
        instagramUrl: _instagramController.text.isNotEmpty
            ? _instagramController.text.trim()
            : null,
        firstName: _firstNameController.text.isNotEmpty
            ? _firstNameController.text.trim()
            : null,
        lastName: _lastNameController.text.isNotEmpty
            ? _lastNameController.text.trim()
            : null,
        headline: _headlineController.text.isNotEmpty
            ? _headlineController.text.trim()
            : null,
      );

      context.read<EditProfileBloc>().add(EditProfileUpdateUserInfo(userInfo));
    }
  }
}
