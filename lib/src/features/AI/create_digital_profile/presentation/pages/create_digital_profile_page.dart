import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/pages/ext_create_digital_profile.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/form/form_add_basic_info.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/form/form_certificate.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/form/form_education_info.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/form/form_experience.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/header_create_digital.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/widgets/path_direction.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/data/models/user_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CreateDigitalProfilePage extends StatefulWidget {
  const CreateDigitalProfilePage({super.key});

  @override
  State<CreateDigitalProfilePage> createState() =>
      _CreateDigitalProfilePageState();
}

class _CreateDigitalProfilePageState extends State<CreateDigitalProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  UserInfoModel _userInfo = const UserInfoModel();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateDigitalProfileBloc(),
      child: BlocListener<CreateDigitalProfileBloc, CreateDigitalProfileState>(
        listener: (context, state) {
          if (state is ChangeCreationStepSuccess) {
            _tabController.animateTo((state.currentStep - 1),
                duration: const Duration(milliseconds: 300));
          }

          if (state is GetUserInfoSuccess) {
            _userInfo = UserInfoModel.fromJson(state.response.data);
          }

          if (state is UpdateUserInfoSuccess) {
            context
                .read<CreateDigitalProfileBloc>()
                .add(const ChangeCreationStep(isNext: true));
          }
        },
        child: DefaultTabController(
          length: 3,
          child: MyScaffold(
            useAppBar: true,
            action: widget.actions(context),
            titleWidget: Assets.icons.logos.homeLogo.svg(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  PathDirection(
                      currentPage: 'Create your AI character',
                      padding: context.padding(bottom: 8, horizontal: 20)),
                  HeaderCreateDigitalProfile(
                    onPressed: (index) => _tabController.animateTo(index),
                    controller: _tabController,
                  ),
                  Padding(
                    padding: context.padding(vertical: 32, horizontal: 20),
                    child: SizedBox(
                      height: context.height * 1.1,
                      child: TabBarView(
                        controller: _tabController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          FormAddBasicInfo(userInfo: _userInfo),
                          const FormEducationInfo(),
                          const FormCertificate(),
                          const FormExperience(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
