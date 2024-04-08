import 'package:auto_route/auto_route.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/avatar.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/header_profile.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/profile_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider(
      create: (context) =>
          injector.get<ProfileBloc>()..add(const ProfileGetUserInfo()),
      child: MyScaffold(
          useAppBar: false,
          topPadding: 40,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AvatarProfile(),
                const HeaderProfile(),
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
                      InkWell(
                        onTap: () => context.router
                            .push(const CreateDigitalProfileRoute()),
                        child: Container(
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
                Container(
                  padding: context.padding(vertical: 6, horizontal: 24),
                  width: context.width,
                  height: context.sizeHeight(12),
                  decoration: BoxDecoration(
                      color:
                          colorScheme(context).outlineVariant.withOpacity(0.2)),
                ),
              ],
            ),
          )),
    );
  }
}
