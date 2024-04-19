import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:demo_dprofiles/src/utils/services/connect_wallet_service.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:tuple/tuple.dart';
import 'package:web3modal_flutter/web3modal_flutter.dart';

class DashboardEndDrawer extends StatefulWidget {
  const DashboardEndDrawer({Key? key}) : super(key: key);

  @override
  State<DashboardEndDrawer> createState() => _DashboardEndDrawerState();
}

class _DashboardEndDrawerState extends State<DashboardEndDrawer> {
  late SidebarXController _drawerController;

  UserInfoModel userInfo = const UserInfoModel();

  @override
  void initState() {
    super.initState();
    _drawerController = SidebarXController(selectedIndex: 0, extended: true);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<DashboardBloc, DashboardState>(
          listener: (context, state) {
            if (state is DashboardDeleteAccountSuccess) {
              _logout(context);
            }
          },
        ),
        BlocListener<ProfileBloc, ProfileState>(
          listener: (context, state) {
            if (state is ProfileGetUserInfoSuccess) {
              userInfo = state.userInfoModel;
            }
          },
        ),
      ],
      child: SidebarX(
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
          width: context.sizeWidth(280),
          decoration: BoxDecoration(color: colorScheme(context).background),
        ),
        headerBuilder: (context, extended) {
          return Padding(
            padding: context.padding(top: 50, horizontal: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: context.sizeHeight(20),
                      child: Assets.images.home.avatarHolder.image(
                        width: context.sizeWidth(60),
                        height: context.sizeWidth(60),
                      ),
                    ),
                    context.sizedBox(width: 16),
                    Expanded(
                      child: Text(
                        userInfo.username ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: AppFont()
                            .fontTheme(context, weight: FontWeight.w600)
                            .bodyLarge,
                      ),
                    )
                  ],
                ),
                context.sizedBox(height: 10),
                W3MAccountButton(service: AppConnectWalletService().w3mService),
                W3MConnectWalletButton(
                    service: AppConnectWalletService().w3mService)
              ],
            ),
          );
        },
        items: [
          Tuple3(const Icon(IconsaxOutline.wallet), 'My Wallet', () {}),
          Tuple3(const Icon(IconsaxOutline.profile_circle), 'Digital Profile',
              () => _onOpenDProfile()),
          Tuple3(const Icon(IconsaxOutline.edit), 'Edit Profile', () {}),
          Tuple3(const Icon(IconsaxOutline.setting), 'Account Setting', () {}),
          Tuple3(const Icon(IconsaxOutline.frame), 'Become Influencer', () {}),
          Tuple3(const Icon(IconsaxOutline.logout), 'Log out',
              () => _logout(context)),
          Tuple3(const Icon(IconsaxOutline.profile_delete), 'Delete Account',
              () => _deleteAccount(context)),
        ]
            .map((e) => SidebarXItem(
                  iconBuilder: (_, __) => e.item1,
                  label: e.item2,
                  onTap: e.item3,
                ))
            .toList(),
      ),
    );
  }

  void _onOpenDProfile() {
    if (userInfo.walletAddress == null) {
      showErrorDialog(context,
          title: "Failed", description: "You don't have digital profile");
    } else {
      context.router.push(const MyDigitalProfileRoute());
    }
  }

  void _logout(BuildContext context) async {
    await sharePreference.removeAccessToken();

    if (context.mounted) {
      context.router.replace(const SignInRoute());
    }
  }

  void _deleteAccount(BuildContext context) {
    context.read<DashboardBloc>().add(DashboardDeleteAccount());
  }
}
