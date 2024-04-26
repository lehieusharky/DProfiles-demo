import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/data/models/public_user_info_model.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/bloc/bloc/public_profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'public_name.dart';
import 'public_title_wallet_follower.dart';

class HeaderPublicProfile extends StatefulWidget {
  const HeaderPublicProfile({super.key});

  @override
  State<HeaderPublicProfile> createState() => _HeaderPublicProfileState();
}

class _HeaderPublicProfileState extends State<HeaderPublicProfile> {
  PublicUserInfoModel? userInfo;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PublicProfileBloc, PublicProfileState,
        PublicUserInfoModel?>(
      selector: (state) {
        if (state is PublicProfileGetBasicInfoSuccess) {
          userInfo = state.userInfo;
        }

        return userInfo;
      },
      builder: (context, state) {
        return Padding(
          padding: context.padding(horizontal: 20, top: 16),
          child: (userInfo == null)
              ? MyShimmer(count: 2, height: context.sizeHeight(320))
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const NamePublicProfile(),
                    TitleWalletFollowerPublicProfile(
                      title: userInfo!.jobTitle ?? '',
                      walletAddress: userInfo!.walletAddress ?? '',
                      follower: '-',
                      following: '-',
                      post: '-',
                    ),
                    Padding(
                      padding: context.padding(vertical: 12),
                      child: Text(
                        userInfo!.headline ?? 'Create Your Headline now',
                        style: AppFont().fontTheme(context).bodyLarge,
                      ),
                    ),
                    // const FreelancerLanguageProfile(),
                  ],
                ),
        );
      },
    );
  }
}
