import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/presentation/create_digital_profile/pages/ext_create_digital_profile.dart';
import 'package:demo_dprofiles/src/features/AI/presentation/create_digital_profile/widgets/form/form_add_basic_info.dart';
import 'package:demo_dprofiles/src/features/AI/presentation/create_digital_profile/widgets/form/form_certificate.dart';
import 'package:demo_dprofiles/src/features/AI/presentation/create_digital_profile/widgets/form/form_education_info.dart';
import 'package:demo_dprofiles/src/features/AI/presentation/create_digital_profile/widgets/header_create_digital.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/widgets/path_direction.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

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
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MyScaffold(
        useAppBar: true,
        action: widget.actions(context),
        titleWidget: Assets.icons.logos.homeLogo.svg(),
        body: Column(
          children: [
            PathDirection(
              currentPage: 'Create your AI character',
              padding: context.padding(bottom: 8, horizontal: 20),
            ),
            HeaderCreateDigitalProfile(
                onPressed: (index) => _tabController.animateTo(index)),
            Expanded(
              child: Padding(
                padding: context.padding(vertical: 32, horizontal: 20),
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    FormAddBasicInfo(),
                    FormEducationInfo(),
                    FormCertificate(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
