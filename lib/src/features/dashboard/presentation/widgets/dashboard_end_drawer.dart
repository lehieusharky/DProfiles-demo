import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:tuple/tuple.dart';

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
        margin: context.padding(vertical: 50),
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
        return Padding(
          padding: context.padding(top: 50),
          child: Row(
            children: [
              CircleAvatar(
                  radius: context.sizeHeight(20),
                  child: Assets.images.home.avatarHolder.image()),
              const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('name'),
                  Text('0123j31230130'),
                ],
              )
            ],
          ),
        );
      },
      items: [
        Tuple3(Assets.icons.iconWallet.svg(), 'My Wallet', () {}),
        Tuple3(Assets.icons.iconWallet.svg(), 'Digital Profile', () {}),
        Tuple3(Assets.icons.iconWallet.svg(), 'Edit Profile', () {}),
        Tuple3(Assets.icons.iconWallet.svg(), 'Account Setting', () {}),
        Tuple3(Assets.icons.iconWallet.svg(), 'Become Influencer', () {}),
      ]
          .map((e) =>
              SidebarXItem(iconBuilder: (_, __) => e.item1, label: e.item2))
          .toList(),
    );
  }
}

/*
 SidebarXItem(
          iconBuilder: (_, __) => Assets.icons.iconWallet.svg(),
          label: 'My Wallet',
          onTap: () {},
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
 */
