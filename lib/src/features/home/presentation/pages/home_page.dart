import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/home/presentation/pages/ext_home_page.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_banner.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_discover.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_drawer.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: MyScaffold(
        sKey: _scaffoldKey,
        useAppBar: true,
        endDrawer: const HomeDrawer(),
        action: widget.actions(
          context,
          onAction3Pressed: () => _scaffoldKey.currentState!.openEndDrawer(),
        ),
        titleWidget: Assets.icons.logos.homeLogo.svg(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const SliverList(
                delegate: SliverChildListDelegate.fixed([
                  HomeBanner(),
                ]),
              ),
            ];
          },
          body: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeDiscover(),
            ],
          ),
        ),
      ),
    );
  }
}
