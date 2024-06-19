import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/character_bots.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/header_ai_character_page.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/widgets/tabbar_ai_character.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/page/action_dashboard.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/page/dashboard_extension.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/widgets/dashboard_end_drawer.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/icons/my_icon_app.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
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
        ..add(const GetListPopularCharacterBot(page: 1)),
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
            extendBodyBehindAppBar: true,
            appBarColor: Colors.transparent,
            useAppBar: true,
            canBack: false,
            titleWidget: Row(
                children: [
                  const MyIconApp(),
                  SizedBox(width: context.sizeWidth(10),),
                  Text("AI Character", style: AppFont().fontTheme(context, weight: FontWeight.w600).titleMedium,)
                ]
          ),
            action: buildActonAppBar(),
            endDrawer: buildEndDrawer(),
            body: Container(
              decoration:   BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.purpleAccent.withOpacity(0.25),
                        Colors.purpleAccent.withOpacity(0.04),
                        Colors.lightBlueAccent.withOpacity(0.1),
                        Colors.lightBlueAccent.withOpacity(0.01)
                      ]
                  )
              ),
              child: SafeArea(
                child: Padding(
                  padding: context.padding(left: 15.5, right: 15.5, top: 18),
                  child: Column(
                      children: [
                        Text(
                          appLocal(context).discoverAICharacterBotNow,
                          style: AppFont().fontTheme(context, weight: FontWeight.w600).labelMedium,),
                        SizedBox(height: context.sizeHeight(10),),
                        const TabBarAICharacter(),
                        SizedBox(height: context.sizeHeight(16)),
                        const Expanded(child: CharacterBots()),
                  ]
                  ),
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
