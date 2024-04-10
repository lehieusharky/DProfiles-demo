import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_appbar_child.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_banner.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_discover.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_tab_bar.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/title_home.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          injector.get<HomeBloc>()..add(const HomeGetFeeds(1, 5)),
      child: MyScaffold(
        topPadding: 20,
        titleWidget: Assets.icons.logos.homeLogo.svg(),
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
              const HomeAppbarChild(
                height: 270,
                child: HomeBanner(),
              ),
              HomeAppbarChild(
                height: 100,
                margin: context.padding(),
                child: const TitleHome(title: 'Discover'),
              ),
            ],
            body: const Column(
              children: [
                HomeTabBar(),
                Expanded(child: HomeDiscover()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
