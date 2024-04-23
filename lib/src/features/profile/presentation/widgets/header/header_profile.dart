import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/header/title_wallet_follower_profile.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/header/username_profile.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'freelancer_language_profile.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, UserInfoModel?>(
      selector: (state) {
        if (state is ProfileGetUserInfoSuccess) {
          return state.userInfoModel;
        }

        return null;
      },
      builder: (context, state) {
        return Padding(
          padding: context.padding(horizontal: 20, top: 16),
          child: (state == null)
              ? MyShimmer(count: 2, height: context.sizeHeight(320))
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UsernameProfile(username: state.username ?? ''),
                    TitleWalletFollowerProfile(
                      title: state.jobTitle ?? '',
                      walletAddress: state.walletAddress ?? '',
                      follower: '12,5K',
                      following: '12,5K',
                      post: '12,5K',
                      point: state.point ?? 0,
                    ),
                    Padding(
                      padding: context.padding(vertical: 12),
                      child: Text(
                        'Hello I’m Product designer, I eager to connect for freelance job',
                        style: AppFont().fontTheme(context).bodyLarge,
                      ),
                    ),
                    FreelancerLanguageProfile(
                      title: 'Freelancer',
                      nationality: state!.nationality ?? 'USA',
                      available: 'Available',
                    ),
                    Padding(
                      padding: context.padding(top: 12, bottom: 22),
                      child: AppOutlineButton(context)
                          .elevatedButton(onPressed: () {}, title: 'Top-up'),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
