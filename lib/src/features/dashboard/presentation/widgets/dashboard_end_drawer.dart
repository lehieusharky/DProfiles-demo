import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/avatar/user_avatar.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:demo_dprofiles/src/utils/services/connect_wallet_service.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:tuple/tuple.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardEndDrawer extends StatefulWidget {
  const DashboardEndDrawer({Key? key}) : super(key: key);

  @override
  State<DashboardEndDrawer> createState() => _DashboardEndDrawerState();
}

class _DashboardEndDrawerState extends State<DashboardEndDrawer>
    with AutomaticKeepAliveClientMixin {
  late SidebarXController _drawerController;

  UserInfoModel userInfo = const UserInfoModel();

  @override
  void initState() {
    super.initState();
    _drawerController = SidebarXController(selectedIndex: 0, extended: true);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<DashboardBloc, DashboardState>(
          listener: (context, state) {
            if (state is DashboardDeleteAccountSuccess) {
              _logout(context);
            }

            if (state is DashboardCheckDigitalProfileAvailableSuccess) {
              _onCheckDigitalProfileSuccess(state.status);
            }

            if (state is DashboardUpdateWalletAddressSuccess) {
              context.read<ProfileBloc>().add(const ProfileGetUserInfo());

              showErrorDialog(context,
                  title: appLocal(context).success,
                  description: appLocal(context).updateWalletAddressSuccess);
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
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is ProfileGetUserInfoSuccess) {
            userInfo = state.userInfoModel;
          }
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
                        UserAvatar(avatarUrlKey: userInfo.avatar, radius: 50),
                        context.sizedBox(width: 16),
                        Expanded(
                          child: Text(
                            "${userInfo.firstName ?? ''} ${userInfo.lastName ?? ''}",
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
                    AppFlatButton(context).elevatedButton(
                        title: userInfo.walletAddress == null
                            ? appLocal(context).connectWallet
                            : appLocal(context).disconnectWallet,
                        onPressed: () => AppConnectWalletService()
                            .connectWallet(
                                context,
                                (walletAddress) =>
                                    _onConnectWallet(walletAddress))),
                  ],
                ),
              );
            },
            items: [
              Tuple3(const Icon(IconsaxOutline.profile_circle),
                  appLocal(context).digitalProfile, () => _onOpenDProfile(context)),
              Tuple3(const Icon(IconsaxOutline.edit), appLocal(context).editProfile,
                  () => _onEditProfile(context)),
              Tuple3(const Icon(IconsaxOutline.paperclip),  appLocal(context).privacyPolicy ,
                  () => _openPrivacyDoc()),
              Tuple3(const Icon(IconsaxOutline.logout), appLocal(context).logout,
                  () => _logout(context)),
              Tuple3(const Icon(IconsaxOutline.profile_delete),
                  appLocal(context).deleteAccount, () => _deleteAccount(context)),
            ]
                .map((e) => SidebarXItem(
                      iconBuilder: (_, __) => e.item1,
                      label: e.item2,
                      onTap: e.item3,
                    ))
                .toList(),
          );
        },
      ),
    );
  }

  void onWalletButtonPressed() {
    if (userInfo.walletAddress == null) {
      AppConnectWalletService().connectWallet(
          context, (walletAddress) => _onConnectWallet(walletAddress));
    } else {
      AppConnectWalletService()
          .disconnectWallet(context, () => _onDisconnectWallet());
    }
  }

  void _onConnectWallet(String walletAddress) {
    userInfo = userInfo.copyWith(walletAddress: walletAddress);

    context.read<DashboardBloc>().add(DashboardUpdateWalletAddress(userInfo));
  }

  void _onDisconnectWallet() {
    userInfo = userInfo.copyWith(walletAddress: null);

    context.read<DashboardBloc>().add(DashboardUpdateWalletAddress(userInfo));
  }

  void _onOpenDProfile(BuildContext context) {
    context
        .read<DashboardBloc>()
        .add(const DashboardCheckDigitalProfileAvailable());
  }

  void _onCheckDigitalProfileSuccess(bool status) {
    if (!status) {
      showErrorDialog(context,
          title: appLocal(context).failed, description: appLocal(context).youDontHaveDigitalProfile);
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
    context.read<DashboardBloc>().add(const DashboardDeleteAccount());
  }

  void _onEditProfile(BuildContext context) {
    context.router.push(const EditProfileRoute());
  }

  @override
  bool get wantKeepAlive => true;

  Future<void> _openPrivacyDoc() async {
    try {
      final Uri url =
          Uri.parse('https://docs.dprofiles.xyz/privacy-and-policy');

      if (!await launchUrl(url)) {
        throw Exception('Couch not launch $url');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
