import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/bloc/edit_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/entities/ext_user_info_entity.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OpenToWorkForm extends StatefulWidget {
  const OpenToWorkForm({Key? key}) : super(key: key);

  @override
  State<OpenToWorkForm> createState() => _OpenToWorkFormState();
}

class _OpenToWorkFormState extends State<OpenToWorkForm> {
  late TextEditingController _payController;
  late TextEditingController _salaryController;
  final keyForm = GlobalKey<FormState>();

  bool openToWork = false;

  @override
  void initState() {
    super.initState();

    _payController = TextEditingController();
    _salaryController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<EditProfileBloc, EditProfileState, UserInfoModel?>(
      selector: (state) {
        if (state is EditProfileGetUserInfoSuccess) {
          _payController = TextEditingController(
              text: state.userInfoModel.getSalaryPayType());

          _salaryController =
              TextEditingController(text: state.userInfoModel.getSalary());

          openToWork = state.userInfoModel.jobOpenStatus == 1 ? true : false;

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
          return Container();
        }
        return Padding(
          padding: context.padding(top: 16),
          child: Form(
            key: keyForm,
            child: Column(
              children: [
                _buildOpenToWork(),
                Padding(
                  padding: context.padding(top: 32),
                  child: AuthField(
                      title: 'PAY',
                      hint: 'Pay per job',
                      autoFocus: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return appLocal(context).fieldCannotBeEmpty;
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
                      suffixIcon: const Icon(IconsaxOutline.arrow_down_1),
                      controller: _payController),
                ),
                Padding(
                  padding: context.padding(top: 32),
                  child: AuthField(
                    controller: _salaryController,
                    title: 'SALARY',
                    keyboardType: TextInputType.number,
                    hint: '\$10,000',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return appLocal(context).fieldCannotBeEmpty;
                      } else {
                        return null;
                      }
                    },
                    textInputAction: TextInputAction.done,
                    suffixIcon: _buildSalarySuffixIcon(),
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

  Widget _buildSalarySuffixIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '/hour',
          style: AppFont()
              .fontTheme(context, color: colorScheme(context).outline)
              .bodyMedium,
        ),
      ],
    );
  }

  Widget _buildOpenToWork() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Open to work',
          style: AppFont().fontTheme(context).bodyLarge,
        ),
        Switch.adaptive(
          value: openToWork,
          onChanged: (value) => setState(() {
            openToWork = value;
          }),
        )
      ],
    );
  }

  void _save(UserInfoModel userInfo) {
    if (keyForm.currentState?.validate() ?? false) {
      userInfo = userInfo.copyWith(
          jobOpenStatus: openToWork ? 1 : 0,
          salaryPayType: _payController.text.contains('job') ? 0 : 1,
          salary: int.parse(_salaryController.text));

      context.read<EditProfileBloc>().add(EditProfileUpdateUserInfo(userInfo));
    }
  }
}
