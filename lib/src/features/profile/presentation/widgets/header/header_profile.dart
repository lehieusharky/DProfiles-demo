import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/header/title_wallet_follower_profile.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/header/username_profile.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'freelancer_language_profile.dart';

class HeaderProfile extends StatefulWidget {
  const HeaderProfile({super.key});

  @override
  State<HeaderProfile> createState() => _HeaderProfileState();
}

class _HeaderProfileState extends State<HeaderProfile> {
  UserInfoModel? userInfo;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, UserInfoModel?>(
      selector: (state) {
        if (state is ProfileGetUserInfoSuccess) {
          userInfo = state.userInfoModel;
        }

        return userInfo;
      },
      builder: (context, state) {
        return Padding(
          padding: context.padding(horizontal: 20, top: 16),
          child: (userInfo == null)
              ? Container()
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const NameProfile(),
                    TitleWalletFollowerProfile(
                      title: userInfo!.jobTitle ?? '',
                      walletAddress: userInfo!.walletAddress ?? '',
                      follower: '-',
                      following: '-',
                      post: '-',
                      point: userInfo!.point ?? 0,
                    ),
                    Padding(
                      padding: context.padding(vertical: 12),
                      child: Text(
                        userInfo!.headline ?? appLocal(context).createYourHeadlineNow,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: AppFont().fontTheme(context).bodyLarge,
                      ),
                    ),
                    const FreelancerLanguageProfile(),
                  ],
                ),
        );
      },
    );
  }
}
