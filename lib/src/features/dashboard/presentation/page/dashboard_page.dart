import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/page/dashboard_extension.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/widgets/bottom_bar_dashboard.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => injector.get<DashboardBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              injector.get<ProfileBloc>()..add(const ProfileGetUserInfo()),
        ),
      ],
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (index) => _onNavigate(index),
          controller: _pageController,
          children: widget.screens(),
        ),
        bottomNavigationBar: BottomBarDashboard(
          currentTab: _currentIndex,
          onChangeTab: (index) => _onBottomNavigationBarTap(index),
        ),
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
