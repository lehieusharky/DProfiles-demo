import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/blogs/blogs.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_feed_sub_page.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';

class HomeDiscover extends StatefulWidget {
  const HomeDiscover({super.key});

  @override
  State<HomeDiscover> createState() => _HomeDiscoverState();
}

class _HomeDiscoverState extends State<HomeDiscover>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          Padding(
            padding: context.padding(left: 20, right: 180),
            child: Container(
              height: context.sizeHeight(54),
              padding: context.padding(vertical: 12),
              child: TabBar(
                controller: _tabController,
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: MyColor.getWhite,
                unselectedLabelStyle: AppFont()
                    .fontTheme(context, color: colorScheme(context).onTertiary)
                    .bodyMedium,
                labelStyle: AppFont().fontTheme(context).bodyMedium,
                indicator: BubbleTabIndicator(
                  indicatorHeight: context.sizeHeight(35),
                  insets: context.padding(horizontal: 0),
                  indicatorColor: colorScheme(context).primary,
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                ),
                tabs: const [
                  Text('Feed'),
                  Text('Blog'),
                ],
              ),
            ),
          ),
          Padding(
            padding: context.padding(horizontal: 20, top: 20),
            child: SizedBox(
              height: context.sizeHeight(400 * 3),
              child: TabBarView(
                controller: _tabController,
                children: const [
                  HomeFeedSubPage(),
                  BlogListPage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() => Padding(
        padding: context.padding(top: 16, horizontal: 20),
        child: Text(
          'Discover',
          style:
              AppFont().fontTheme(context, weight: FontWeight.w600).titleSmall,
        ),
      );
}
