import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class FormBasicInfo extends StatefulWidget {
  const FormBasicInfo({super.key});

  @override
  State<FormBasicInfo> createState() => _FormBasicInfoState();
}

class _FormBasicInfoState extends State<FormBasicInfo>
    with AutomaticKeepAliveClientMixin {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _nationalityController = TextEditingController();

  final _keyForm = GlobalKey<FormState>();

  UserInfoModel _userInfo = const UserInfoModel();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<AiCharacterBloc, AiCharacterState>(
      listener: (context, state) {
        if (state is GetUserInfoSuccess) {
          _handlerTextFieldController();
        }
      },
      builder: (context, state) {
        return Form(
          key: _keyForm,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: context.padding(bottom: 24),
                child: Text(
                  appLocal(context).addBasicInformation,
                  style: AppFont()
                      .fontTheme(context, weight: FontWeight.bold)
                      .labelMedium,
                ),
              ),
              AuthField(
                  controller: _nameController,
                  title: appLocal(context).name.toUpperCase(),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  hint: 'Name'),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _dobController,
                  title: appLocal(context).dob.toUpperCase(),
                  textInputAction: TextInputAction.next,
                  suffixIcon: const Icon(IconsaxOutline.calendar_1),
                  hint: 'dd/mm/yyyy',
                ),
              ),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _nationalityController,
                  title: appLocal(context).nationality.toUpperCase(),
                  textInputAction: TextInputAction.next,
                  hint: 'Vietnam',
                ),
              ),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _genderController,
                  title: appLocal(context).gender.toUpperCase(),
                  textInputAction: TextInputAction.done,
                  hint: 'Male',
                ),
              ),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _locationController,
                  title: appLocal(context).yourLocation.toUpperCase(),
                  textInputAction: TextInputAction.done,
                  hint: 'HO CHI MINH CITY',
                ),
              ),
              Padding(
                padding: context.padding(vertical: 32),
                child: AppFlatButton(context).elevatedButton(
                  width: context.width,
                  onPressed: () => _continue(context),
                  title: appLocal(context).continueButton.toUpperCase(),
                  // child: (state is CreateDigitalProfileLoading)
                  //     ? const MyLoading()
                  //     : null,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _handlerTextFieldController() {
    _nameController.setText(_userInfo.username ?? '');
    _dobController.setText(_userInfo.birthDay ?? '');
    _genderController.setText(_userInfo.idCardNumber ?? '');
    _locationController.setText(_userInfo.nationality ?? '');
  }

  Future<void> _userInfoValidation() async {
    if (_nameController.text.isNotEmpty) {
      _userInfo = _userInfo.copyWith(username: _nameController.text.trim());
    }

    if (_dobController.text.isNotEmpty) {
      _userInfo = _userInfo.copyWith(birthDay: _dobController.text.trim());
    }

    if (_genderController.text.isNotEmpty) {
      _userInfo = _userInfo.copyWith(genderId: 1);
    }
  }

  void _continue(BuildContext context) async {
    if (_keyForm.currentState?.validate() ?? false) {
      // await _userInfoValidation().whenComplete(() => context
      //     .read<CreateDigitalProfileBloc>()
      //     .add(UpdateUserInfo(_userInfo)));
    }
  }

  @override
  bool get wantKeepAlive => true;
}
