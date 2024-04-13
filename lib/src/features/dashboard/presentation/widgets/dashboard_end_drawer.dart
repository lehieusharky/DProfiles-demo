import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class DashboardEndDrawer extends StatefulWidget {
  const DashboardEndDrawer({Key? key}) : super(key: key);

  @override
  State<DashboardEndDrawer> createState() => _DashboardEndDrawerState();
}

class _DashboardEndDrawerState extends State<DashboardEndDrawer> {
  late SidebarXController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = SidebarXController(selectedIndex: 0, extended: true);
  }

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      animationDuration: const Duration(milliseconds: 200),
      controller: _drawerController,
      showToggleButton: false,
      theme: SidebarXTheme(
        margin: context.padding(vertical: 10),
        decoration: BoxDecoration(
          color: colorScheme(context).background,
          borderRadius: BorderRadius.circular(16),
        ),
        textStyle: AppFont().fontTheme(context).bodyLarge,
        itemTextPadding: context.padding(left: 20),
        selectedItemTextPadding: context.padding(left: 20),
      ),
      extendedTheme: SidebarXTheme(
        width: context.sizeWidth(200),
        decoration: BoxDecoration(color: colorScheme(context).background),
      ),
      headerBuilder: (context, extended) {
        if (extended) {
          return CircleAvatar(
            radius: context.sizeHeight(20),
            child: Assets.icons.homeLogo.image(),
          );
        } else {}
        return Row(
          children: [
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: CircleAvatar(
                  radius: context.sizeHeight(20),
                  child: Assets.icons.homeLogo.image(),
                ),
              ),
            ),
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('name'),
                Text('0123j31230130'),
              ],
            )
          ],
        );
      },
      items: [
        SidebarXItem(
          iconBuilder: (_, __) => Assets.icons.iconWallet.svg(),
          label: 'My Wallet',
          onTap: () {
            // context.pushRoute(MyWalletRoute())
          },
        ),
        const SidebarXItem(
          icon: Icons.search,
          label: 'Digital Profile',
        ),
        SidebarXItem(
          icon: Icons.people,
          label: 'Edit Profile',
          onTap: () {
            context.pushRoute(const EditProfileRoute());
          },
        ),
        const SidebarXItem(
          icon: Icons.settings,
          label: 'Account Setting',
        ),
        const SidebarXItem(
          icon: Icons.account_box,
          label: 'Become Influencer',
        ),
        const SidebarXItem(
          icon: Icons.language,
          label: 'Language',
        ),
        const SidebarXItem(
          icon: Icons.favorite,
          label: 'Privacy & Policy',
        ),
        SidebarXItem(
          icon: Icons.logout,
          label: 'Log out',
          onTap: () async {
            await sharePreference.removeAccessToken();
            if (context.mounted) {
              context.router.replace(const SignInRoute());
            }
          },
        ),
      ],
    );
  }
}
