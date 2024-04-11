import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/news_feed_home.dart';
import 'package:flutter/material.dart';

class HomeDiscover extends StatelessWidget {
  const HomeDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      physics: AlwaysScrollableScrollPhysics(),
      children: [
        NewsFeedHome(),
        Text('Blog'),
        // BlogListPage(),
      ],
    );
  }
}
