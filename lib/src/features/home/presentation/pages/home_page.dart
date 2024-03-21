import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';

import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/discover_list_home_page.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_banner.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/scholarships_home.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      useAppBar: true,
      action: [
        IconButton(
          onPressed: () {},
          icon: const Icon(IconsaxOutline.search_normal_1),
        ),
        Padding(
          padding: context.padding(right: 5, left: 10),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(IconsaxOutline.notification_bing),
          ),
        ),
        Padding(
          padding: context.padding(horizontal: 5),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(IconsaxOutline.menu_1),
          ),
        ),
      ],
      titleWidget: Assets.icons.logos.homeLogo.svg(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeBanner(),
            const ScholarshipsHome(),
            Padding(
              padding: context.padding(top: 16, horizontal: 20),
              child: Text(
                'Discover',
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.w600)
                    .titleSmall,
              ),
            ),
            Padding(
              padding: context.padding(horizontal: 10),
              child: SizedBox(
                height: context.sizeHeight(54),
                child: TabBar(
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.white,
                  unselectedLabelStyle: AppFont()
                      .fontTheme(context,
                          color: colorScheme(context).onTertiary)
                      .bodyMedium,
                  labelStyle: AppFont().fontTheme(context).bodyMedium,
                  indicator: BubbleTabIndicator(
                    indicatorHeight: 35,
                    insets: context.padding(horizontal: 0),
                    indicatorColor: colorScheme(context).primary,
                    tabBarIndicatorSize: TabBarIndicatorSize.tab,
                  ),
                  tabs: const [
                    Text('Feed'),
                    Text('Influence'),
                    Text('Following'),
                    Text('Blog'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: context.padding(horizontal: 20, top: 20),
              child: Expanded(
                child: SizedBox(
                  height: context.sizeHeight(400 * 3),
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      DiscoverListHomePage(),
                      DiscoverListHomePage(),
                      DiscoverListHomePage(),
                      DiscoverListHomePage(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
