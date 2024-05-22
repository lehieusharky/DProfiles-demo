import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/data/models/public_user_info_model.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/bloc/public_profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublicFreelancerLanguageProfile extends StatefulWidget {
  const PublicFreelancerLanguageProfile({Key? key}) : super(key: key);

  @override
  State<PublicFreelancerLanguageProfile> createState() =>
      _PublicFreelancerLanguageProfileState();
}

class _PublicFreelancerLanguageProfileState
    extends State<PublicFreelancerLanguageProfile> {
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
                  userInfo?.jobOpenStatus == 1 ?  appLocal(context).available :  appLocal(context).unavailable,
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
