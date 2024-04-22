import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/form/form_add_basic_info.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/form/form_certificate.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/form/form_education_info.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/form/form_experience.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/header_create_digital.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateDigitalProfileBloc(),
      child: BlocConsumer<CreateDigitalProfileBloc, CreateDigitalProfileState>(
        listener: (context, state) {
          if (state is ChangeCreationStepSuccess) {
            _tabController.animateTo((state.currentStep - 1),
                duration: const Duration(milliseconds: 300));
          }

          if (state is UpdateUserInfoSuccess) {
            context
                .read<CreateDigitalProfileBloc>()
                .add(const ChangeCreationStep(isNext: true));
          }

          if (state is CreateDigitalProfileError) {
            showErrorDialog(
              context,
              title: state.title ?? 'Error',
              description: state.message.first,
            );
          }
        },
        builder: (context, state) => DefaultTabController(
          length: 3,
          child: MyScaffold(
            useAppBar: true,
            canBack: true,
            appBarTitle: 'Create Digital Profile',
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) => [
                MySliverAppBar(
                  height: 205,
                  child: HeaderCreateDigitalProfile(controller: _tabController),
                )
              ],
              body: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: context.padding(horizontal: 20, top: 32),
                      child: TabBarView(
                        controller: _tabController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: const [
                          FormAddBasicInfo(),
                          FormEducationInfo(),
                          FormCertificate(),
                          FormExperience(),
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
