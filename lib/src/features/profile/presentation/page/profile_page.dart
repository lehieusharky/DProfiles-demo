import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/discover_list_home_page.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/avatar.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/profile_sub_page.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        useAppBar: false,
        topPadding: 40,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AvatarProfile(),
              Padding(
                padding: context.padding(horizontal: 20, top: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Breanne Schinner',
                          style: AppFont()
                              .fontTheme(context, weight: FontWeight.w600)
                              .titleSmall,
                        ),
                        const Icon(IconsaxOutline.more)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tittle: Product Designer',
                          style: AppFont()
                              .fontTheme(context,
                                  color: colorScheme(context).outline)
                              .bodyMedium,
                        ),
                        Container(
                          padding: context.padding(horizontal: 5, vertical: 3),
                          decoration: BoxDecoration(
                              color: colorScheme(context)
                                  .outlineVariant
                                  .withOpacity(0.3),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Text(
                                '100',
                                style: AppFont()
                                    .fontTheme(context,
                                        color: colorScheme(context).outline)
                                    .bodyMedium,
                              ),
                              context.sizedBox(width: 5),
                              const Icon(IconsaxBold.wallet),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: context.padding(vertical: 2),
                      child: Text(
                        'Wallet: 123D...CFRT',
                        style: AppFont()
                            .fontTheme(context,
                                color: colorScheme(context).outline)
                            .bodyMedium,
                      ),
                    ),
                    Padding(
                      padding: context.padding(vertical: 2),
                      child: Row(
                        children: [
                          Text(
                            'Follower',
                            style: AppFont()
                                .fontTheme(context,
                                    color: colorScheme(context).outline)
                                .bodyMedium,
                          ),
                          Padding(
                            padding: context.padding(left: 8, right: 16),
                            child: Text(
                              '12,5k',
                              style: AppFont().fontTheme(context).bodyMedium,
                            ),
                          ),
                          Text(
                            'Following',
                            style: AppFont()
                                .fontTheme(context,
                                    color: colorScheme(context).outline)
                                .bodyMedium,
                          ),
                          Padding(
                            padding: context.padding(left: 8, right: 16),
                            child: Text(
                              '12,5k',
                              style: AppFont().fontTheme(context).bodyMedium,
                            ),
                          ),
                          Text(
                            'Post',
                            style: AppFont()
                                .fontTheme(context,
                                    color: colorScheme(context).outline)
                                .bodyMedium,
                          ),
                          Padding(
                            padding: context.padding(left: 8, right: 16),
                            child: Text(
                              '12,5k',
                              style: AppFont().fontTheme(context).bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: context.padding(vertical: 12),
                      child: Text(
                        'Hello I’m Product designer, I eager to connect for freelance job',
                        style: AppFont().fontTheme(context).bodyLarge,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(IconsaxOutline.global,
                            color: colorScheme(context).outline),
                        Padding(
                          padding: context.padding(left: 8),
                          child: Text(
                            'Freelancer',
                            style: AppFont()
                                .fontTheme(context,
                                    weight: FontWeight.bold,
                                    color: colorScheme(context).outline)
                                .bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: context.padding(horizontal: 24),
                          child: Text(
                            '|',
                            style: AppFont()
                                .fontTheme(context,
                                    weight: FontWeight.bold,
                                    color: colorScheme(context).outline)
                                .bodyMedium,
                          ),
                        ),
                        Assets.images.profile.usFlag.svg(),
                        Padding(
                          padding: context.padding(left: 8),
                          child: Text(
                            'US',
                            style: AppFont()
                                .fontTheme(context,
                                    weight: FontWeight.bold,
                                    color: colorScheme(context).outline)
                                .bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: context.padding(horizontal: 24),
                          child: Text(
                            '|',
                            style: AppFont()
                                .fontTheme(context,
                                    weight: FontWeight.bold,
                                    color: colorScheme(context).outline)
                                .bodyMedium,
                          ),
                        ),
                        Assets.images.profile.dot.svg(),
                        Padding(
                          padding: context.padding(left: 8),
                          child: Text(
                            'Available',
                            style: AppFont()
                                .fontTheme(context,
                                    weight: FontWeight.bold,
                                    color: colorScheme(context).outline)
                                .bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: context.padding(top: 12, bottom: 22),
                      child: Container(
                        padding: context.padding(vertical: 6, horizontal: 24),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color:
                                  colorScheme(context).outline.withOpacity(0.3),
                            )),
                        child: Text(
                          'Top-up',
                          style: AppFont()
                              .fontTheme(context, weight: FontWeight.bold)
                              .bodyLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: context.padding(vertical: 6, horizontal: 24),
                width: context.width,
                height: context.sizeHeight(12),
                decoration: BoxDecoration(
                    color:
                        colorScheme(context).outlineVariant.withOpacity(0.2)),
              ),
              Padding(
                padding: context.padding(horizontal: 20, vertical: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'dProfile',
                      style: AppFont()
                          .fontTheme(context, weight: FontWeight.bold)
                          .bodyLarge,
                    ),
                    Container(
                      padding: context.padding(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                          color: colorScheme(context)
                              .outlineVariant
                              .withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Text(
                            'Create dProfile',
                            style: AppFont()
                                .fontTheme(context, weight: FontWeight.bold)
                                .bodyMedium,
                          ),
                          context.sizedBox(width: 5),
                          Icon(
                            IconsaxBold.personalcard,
                            color: colorScheme(context).primary,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: context.padding(vertical: 6, horizontal: 24),
                width: context.width,
                height: context.sizeHeight(12),
                decoration: BoxDecoration(
                    color:
                        colorScheme(context).outlineVariant.withOpacity(0.2)),
              ),
              Padding(
                padding: context.padding(horizontal: 20, vertical: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Social Media',
                      style: AppFont()
                          .fontTheme(context, weight: FontWeight.bold)
                          .bodyLarge,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          IconsaxOutline.camera,
                          weight: context.sizeWidth(12),
                        ),
                        Padding(
                          padding: context.padding(horizontal: 16),
                          child: Icon(
                            IconsaxOutline.camera,
                            weight: context.sizeWidth(12),
                          ),
                        ),
                        Icon(
                          IconsaxOutline.camera,
                          weight: context.sizeWidth(12),
                        ),
                        Padding(
                          padding: context.padding(horizontal: 16),
                          child: Icon(
                            IconsaxOutline.camera,
                            weight: context.sizeWidth(12),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: context.padding(vertical: 6, horizontal: 24),
                width: context.width,
                height: context.sizeHeight(12),
                decoration: BoxDecoration(
                    color:
                        colorScheme(context).outlineVariant.withOpacity(0.2)),
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
                      Text('Profile'),
                      Text('Feed'),
                      Text('Transactions'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: context.padding(horizontal: 20, top: 20),
                child: SizedBox(
                  height: context.sizeHeight(300 * 2),
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      ProfileSubPage(),
                      ProfileSubPage(),
                      ProfileSubPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
