import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/presentation/create_ai_character/pages/ext_create_ai_character.dart';
import 'package:demo_dprofiles/src/features/AI/presentation/create_ai_character/widgets/header_create_ai_character.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/widgets/path_direction.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CreateAICharacterPage extends StatefulWidget {
  const CreateAICharacterPage({super.key});

  @override
  State<CreateAICharacterPage> createState() => _CreateAICharacterPageState();
}

class _CreateAICharacterPageState extends State<CreateAICharacterPage>
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
            const PathDirection(currentPage: 'Create your AI character'),
            HeaderCreateAIChacracter(
              onPressed: (index) => _tabController.animateTo(index),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Text('1'),
                  Text('2'),
                  Text('3'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
