import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/ui/my_appbar.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/page/dashboard_extension.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/widgets/bottom_bar_dashboard.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/widgets/dashboard_end_drawer.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;

  late PageController _pageController;

  late ScrollController _scrollController;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MyAppbar(
          titleWidget: Assets.icons.logos.dWhitePWhite.svg(), height: 50),
      endDrawer: const DashboardEndDrawer(),
      body: PageView(
        onPageChanged: (index) => _onNavigate(index),
        controller: _pageController,
        children: widget.screens(_scrollController),
      ),
      bottomNavigationBar: BottomBarDashboard(
        currentTab: _currentIndex,
        onChangeTab: (index) => _onBottomNavigationBarTap(index),
      ),
    );
  }

  void _onBottomNavigationBarTap(int index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  void _onNavigate(int index) => setState(() {
        _currentIndex = index;
      });
}
