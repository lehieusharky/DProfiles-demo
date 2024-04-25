import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/character_bots.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/create_ai_character_button.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/tabbar_ai_character.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/page/action_dashboard.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/page/dashboard_extension.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/widgets/dashboard_end_drawer.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/icons/my_icon_app.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AiCharacterPage extends StatefulWidget {
  const AiCharacterPage({Key? key}) : super(key: key);

  @override
  State<AiCharacterPage> createState() => _AiCharacterPageState();
}

class _AiCharacterPageState extends State<AiCharacterPage>
    with AutomaticKeepAliveClientMixin
    implements ActionDashboard {
  final _skey = GlobalKey<ScaffoldState>();

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
            sKey: _skey,
            topPadding: 20,
            horizontalMargin: 20,
            useAppBar: true,
            canBack: false,
            titleWidget: const MyIconApp(),
            action: buildActonAppBar(),
            endDrawer: buildEndDrawer(),
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) => [],
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const CreateAICharacterBotButton(),
                    const TabBarAICharacter(),
                    SizedBox(height: context.sizeHeight(16)),
                    const CharacterBots(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget buildEndDrawer() {
    return const DashboardEndDrawer(
      key: Key('ai character'),
    );
  }

  @override
  List<Widget> buildActonAppBar() {
    return actionAppbar(context, _skey);
  }

  @override
  GlobalKey<ScaffoldState> sKey() => _skey;
}
