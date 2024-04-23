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
  late TextEditingController _nameController;
  late TextEditingController _jobTitleController;
  late TextEditingController _nationalityController;
  final keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _jobTitleController = TextEditingController();
    _nationalityController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<EditProfileBloc, EditProfileState, UserInfoModel?>(
      selector: (state) {
        if (state is EditProfileGetUserInfoSuccess) {
          _nameController =
              TextEditingController(text: state.userInfoModel.username);
          _jobTitleController =
              TextEditingController(text: state.userInfoModel.jobTitle);
          _nationalityController =
              TextEditingController(text: state.userInfoModel.nationality);

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
                  title: 'NAME',
                  hint: 'Your Name',
                  keyboardType: TextInputType.text,
                  autoFocus: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return appLocal(context).fieldCannotBeEmpty;
                    } else {
                      return null;
                    }
                  },
                  controller: _nameController,
                ),
                Padding(
                  padding: context.padding(top: 32),
                  child: AuthField(
                    title: 'JOB TITLE',
                    hint: 'Your job title',
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

  void _save(UserInfoModel userInfo) {
    if (keyForm.currentState?.validate() ?? false) {
      userInfo = userInfo.copyWith(
        username: _nameController.text.trim(),
        jobTitle: _jobTitleController.text.trim(),
        nationality: _nationalityController.text.trim(),
      );

      context.read<EditProfileBloc>().add(EditProfileUpdateUserInfo(userInfo));
    }
  }
}
