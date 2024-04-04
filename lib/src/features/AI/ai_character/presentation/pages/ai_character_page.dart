import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/header_ai_character.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/form/form_add_character.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/form/form_basic_info.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/form/form_profiles.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AICharacterPage extends StatefulWidget {
  const AICharacterPage({super.key});

  @override
  State<AICharacterPage> createState() => _AICharacterPageState();
}

class _AICharacterPageState extends State<AICharacterPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AiCharacterBloc(),
      child: BlocConsumer<AiCharacterBloc, AiCharacterState>(
        listener: (context, state) {},
        builder: (context, state) => DefaultTabController(
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
        ),
      ),
    );
  }
}
