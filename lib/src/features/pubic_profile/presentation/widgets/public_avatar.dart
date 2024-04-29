import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/data/models/public_user_info_model.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/bloc/public_profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PublicProfileBloc, PublicProfileState,
        PublicUserInfoModel?>(selector: (state) {
      if (state is PublicProfileGetBasicInfoSuccess) {
        userInfo = state.userInfo;
      }

      return userInfo;
    }, builder: (context, state) {
      if (userInfo == null) {
        return const MyShimmer(count: 1, height: 150);
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
                        Assets.images.profile.profileBackground.image(),
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
              child: _buildAvatar(context),
            ),
          ],
        );
      }
    });
  }

  Widget _buildAvatar(BuildContext context) {
    return Container(
      padding: context.padding(all: 1.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorScheme(context).background,
      ),
      child: (userInfo!.avatar == null)
          ? Assets.images.home.avatarHolder.image(
              width: context.sizeWidth(96),
              height: context.sizeWidth(96),
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: MyCacheImage(
                  width: context.sizeWidth(96),
                  height: context.sizeWidth(96),
                  imageUrl:
                      'https://d3v3a2vsni37rv.cloudfront.net/${userInfo!.avatar}')),
    );
  }
}
