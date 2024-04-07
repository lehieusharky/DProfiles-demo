import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CreateAiCharacterPage extends StatefulWidget {
  const CreateAiCharacterPage({super.key});

  @override
  State<CreateAiCharacterPage> createState() => _CreateAiCharacterPageState();
}

class _CreateAiCharacterPageState extends State<CreateAiCharacterPage>
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
        titleWidget: Assets.icons.logos.homeLogo.svg(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderCreateAICharacter(controller: _tabController),
              Padding(
                padding: context.padding(vertical: 32, horizontal: 20),
                child: SizedBox(
                  height: context.height * 1.2,
                  child: TabBarView(
                    controller: _tabController,
                    // physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      FormBasicInfo(),
                      FormProfiles(),
                      FormAddCharacter(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
