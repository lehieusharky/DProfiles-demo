import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter/material.dart';

class DashboardEndDrawer extends StatelessWidget {
  const DashboardEndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: context.width * 0.7,
      child: Padding(
        padding: context.padding(left: 16),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Padding(
                    padding: context.padding(right: 16),
                    child: const CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Breanne',
                        style: AppFont()
                            .fontTheme(context, weight: FontWeight.bold)
                            .bodyLarge,
                      ),
                      Padding(
                        padding: context.padding(top: 4),
                        child: Text(
                          'Wallet: 12..dfdd',
                          style: AppFont()
                              .fontTheme(context,
                                  color: colorScheme(context).outline)
                              .bodySmall,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              title: Text(
                'My Wallet',
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .bodyLarge,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Digital Profile',
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .bodyLarge,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Edit Profile',
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .bodyLarge,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Account Setting',
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .bodyLarge,
              ),
              onTap: () {},
            ),
            ListTile(
                title: Text(
                  'Log out',
                  style: AppFont()
                      .fontTheme(context, weight: FontWeight.bold)
                      .bodyLarge,
                ),
                onTap: () {
                  sharePreference.removeAccessToken();

                  context.router.replace(const SignInRoute());
                }),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context) => ListTile(
      title: Text(
        'Log out',
        style: AppFont().fontTheme(context, weight: FontWeight.bold).bodyLarge,
      ),
      onTap: () => context.router.replace(const ConnectWalletRoute()));
}
