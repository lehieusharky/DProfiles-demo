import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/data/models/public_user_info_model.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/bloc/public_profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/avatar/user_avatar.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/avatar/user_banner.dart';
import 'package:ficonsax/ficonsax.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AvatarPublicProfile extends StatefulWidget {
  const AvatarPublicProfile({super.key});

  @override
  State<AvatarPublicProfile> createState() => _AvatarPublicProfileState();
}

class _AvatarPublicProfileState extends State<AvatarPublicProfile> {
  PublicUserInfoModel? userInfo;
  String? bannerUrlKey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PublicProfileBloc, PublicProfileState>(
      listener: (context, state) {
        if (state is PublicProfileGetBasicInfoSuccess) {
          userInfo = state.userInfo;
        }

        if (state is PublicProfileGetBannerSuccess) {
          bannerUrlKey = state.banner.bannerUrl;
        }
      },
      builder: (context, state) {
        if (userInfo == null) {
          return Container();
        } else {
          return Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          UserBanner(bannerUrlKey: bannerUrlKey),
                          Padding(
                            padding: context.padding(top: 40),
                            child: IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: const Icon(IconsaxOutline.arrow_left_2,
                                    color: MyColor.getWhite)),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                ],
              ),
              Padding(
                padding: context.padding(horizontal: 20),
                child: UserAvatar(avatarUrlKey: userInfo!.avatar),
              ),
            ],
          );
        }
      },
    );
  }
}
