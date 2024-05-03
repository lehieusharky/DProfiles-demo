import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FreelancerLanguageProfile extends StatefulWidget {
  const FreelancerLanguageProfile({Key? key}) : super(key: key);

  @override
  State<FreelancerLanguageProfile> createState() =>
      _FreelancerLanguageProfileState();
}

class _FreelancerLanguageProfileState extends State<FreelancerLanguageProfile> {
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
        if (userInfo == null) {
          return Container();
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(IconsaxOutline.global, color: colorScheme(context).outline),
              Padding(
                padding: context.padding(left: 8),
                child: Text(
                  userInfo!.jobTitle ?? '',
                  style: AppFont()
                      .fontTheme(context,
                          weight: FontWeight.bold,
                          color: colorScheme(context).outline)
                      .bodyMedium,
                ),
              ),
              Padding(
                padding: context.padding(horizontal: 12),
                child: Text(
                  '|',
                  style: AppFont()
                      .fontTheme(context,
                          weight: FontWeight.bold,
                          color: colorScheme(context).outline)
                      .bodyMedium,
                ),
              ),
              Assets.images.profile.usFlag.svg(),
              Padding(
                padding: context.padding(left: 8),
                child: Text(
                  userInfo!.nationality ?? '',
                  style: AppFont()
                      .fontTheme(context,
                          weight: FontWeight.bold,
                          color: colorScheme(context).outline)
                      .bodyMedium,
                ),
              ),
              Padding(
                padding: context.padding(horizontal: 24),
                child: Text(
                  '|',
                  style: AppFont()
                      .fontTheme(context,
                          weight: FontWeight.bold,
                          color: colorScheme(context).outline)
                      .bodyMedium,
                ),
              ),
              Assets.images.profile.dot.svg(),
              Padding(
                padding: context.padding(left: 8),
                child: Text(
                  userInfo?.jobOpenStatus == 1 ? 'Available' : 'Unavailable',
                  style: AppFont()
                      .fontTheme(context,
                          weight: FontWeight.bold,
                          color: colorScheme(context).outline)
                      .bodyMedium,
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
