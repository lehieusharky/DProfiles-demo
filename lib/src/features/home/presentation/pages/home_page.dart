import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_banner.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_discover.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_tab_bar.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/title_home.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  final ScrollController scrollController;
  const HomePage({Key? key, required this.scrollController}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => injector.get<HomeBloc>()..add(const HomeGetFeeds()),
      child: MyScaffold(
        topPadding: 20,
        titleWidget: Assets.icons.logos.homeLogo.svg(),
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            controller: widget.scrollController,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
              const MySliverAppBar(height: 270, child: HomeBanner()),
            ],
            body: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TitleHome(title: 'Discover'),
                TabBarHome(),
                Expanded(child: HomeDiscover()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
