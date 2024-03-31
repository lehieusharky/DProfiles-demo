import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormAddBasicInfo extends StatefulWidget {
  final UserInfoModel userInfo;

  const FormAddBasicInfo({super.key, required this.userInfo});

  @override
  State<FormAddBasicInfo> createState() => _FormAddBasicInfoState();
}

class _FormAddBasicInfoState extends State<FormAddBasicInfo> {
  late TextEditingController _nameController;
  late TextEditingController _dobController;
  late TextEditingController _idCardController;
  late TextEditingController _nationalityController;
  final _keyForm = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.userInfo.username);
    _dobController = TextEditingController(text: widget.userInfo.birthDay);
    _idCardController =
        TextEditingController(text: widget.userInfo.idCardNumber);
    _nationalityController =
        TextEditingController(text: widget.userInfo.nationality);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateDigitalProfileBloc, CreateDigitalProfileState>(
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
                  'AI Features',
                  style: AppFont()
                      .fontTheme(context, weight: FontWeight.bold)
                      .labelMedium,
                ),
              ),
              AuthField(
                  controller: _nameController,
                  title: 'NAME',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  hint: 'Name'),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _dobController,
                  title: 'DOB',
                  hint: 'dd/mm/yyyy',
                ),
              ),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _nationalityController,
                  title: 'NATIONALITY',
                  hint: 'Vietnam',
                ),
              ),
              Padding(
                padding: context.padding(top: 32),
                child: AuthField(
                  controller: _idCardController,
                  title: 'ID CARD NUMBER',
                  hint: 'Vietnam',
                ),
              ),
              Padding(
                padding: context.padding(vertical: 32),
                child: AppFlatButton(context).elevatedButton(
                  width: context.width,
                  onPressed: () => _continue(context),
                  title: 'Continue',
                  child: (state is CreateDigitalProfileLoading)
                      ? const MyLoading()
                      : null,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _continue(BuildContext context) {
    UserInfoModel userInfo = _handlerUserInfo();

    if (_keyForm.currentState?.validate() ?? false) {
      context.read<CreateDigitalProfileBloc>().add(UpdateUserInfo(userInfo));
    }
  }

  UserInfoModel _handlerUserInfo() {
    UserInfoModel userInfo = widget.userInfo;

    if (_nameController.text.isNotEmpty) {
      userInfo = userInfo.copyWith(username: _nameController.text.trim());
    }

    if (_dobController.text.isNotEmpty) {
      userInfo = userInfo.copyWith(birthDay: _dobController.text.trim());
    }

    if (_nationalityController.text.isNotEmpty) {
      userInfo =
          userInfo.copyWith(nationality: _nationalityController.text.trim());
    }

    if (_idCardController.text.isNotEmpty) {
      userInfo = userInfo.copyWith(idCardNumber: _idCardController.text.trim());
    }
    return userInfo;
  }
}
