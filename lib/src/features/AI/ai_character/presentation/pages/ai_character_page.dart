import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/character_bots.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/tabbar_ai_character.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AiCharacterPage extends StatefulWidget {
  const AiCharacterPage({Key? key}) : super(key: key);

  @override
  State<AiCharacterPage> createState() => _AiCharacterPageState();
}

class _AiCharacterPageState extends State<AiCharacterPage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      _onTabChange(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => injector.get<AiCharacterBloc>()
        ..add(const GetListPopularCharacterBot()),
      child: BlocListener<AiCharacterBloc, AiCharacterState>(
        listener: (context, state) {
          if (state is AICharacterError) {
            showErrorDialog(context,
                title: state.title ?? '', description: state.message[0]);
          }
        },
        child: DefaultTabController(
          length: 2,
          child: MyScaffold(
            useAppBar: true,
            horizontalMargin: 20,
            topPadding: 20,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  AppFlatButton(context).elevatedButton(
                      title: 'Create AI Character',
                      onPressed: () =>
                          context.router.push(const CreateAiCharacterRoute())),
                  TabBarAICharacter(controller: _tabController),
                  SizedBox(height: context.sizeHeight(16)),
                  const CharacterBots(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTabChange(int index) {
    final bloc = injector.get<AiCharacterBloc>();
    switch (index) {
      case 0:
        bloc.add(const GetListPopularCharacterBot());
        break;
      case 1:
        bloc.add(const GetListCharacterBot());
        break;
    }
  }

  @override
  bool get wantKeepAlive => true;
}
