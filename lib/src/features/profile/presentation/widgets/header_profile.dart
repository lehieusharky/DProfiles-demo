import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        if (state == null) {
          return const Text('Shimmer loading....');
        }
        return Padding(
          padding: context.padding(horizontal: 20, top: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    state.username ?? '',
                    style: AppFont()
                        .fontTheme(context, weight: FontWeight.w600)
                        .titleSmall,
                  ),
                  IconButton(
                      onPressed: () =>
                          context.router.push(const EditProfileRoute()),
                      icon: const Icon(IconsaxOutline.more)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    state.jobTitle ?? '',
                    style: AppFont()
                        .fontTheme(context, color: colorScheme(context).outline)
                        .bodyMedium,
                  ),
                  Container(
                    padding: context.padding(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                        color: colorScheme(context)
                            .outlineVariant
                            .withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Text(
                          '100',
                          style: AppFont()
                              .fontTheme(context,
                                  color: colorScheme(context).outline)
                              .bodyMedium,
                        ),
                        context.sizedBox(width: 5),
                        const Icon(IconsaxBold.wallet),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: context.padding(vertical: 2),
                child: Text(
                  state.walletAddress ?? '',
                  style: AppFont()
                      .fontTheme(context, color: colorScheme(context).outline)
                      .bodyMedium,
                ),
              ),
              Padding(
                padding: context.padding(vertical: 2),
                child: Row(
                  children: [
                    Text(
                      'Follower',
                      style: AppFont()
                          .fontTheme(context,
                              color: colorScheme(context).outline)
                          .bodyMedium,
                    ),
                    Padding(
                      padding: context.padding(left: 8, right: 16),
                      child: Text(
                        '12,5k',
                        style: AppFont().fontTheme(context).bodyMedium,
                      ),
                    ),
                    Text(
                      'Following',
                      style: AppFont()
                          .fontTheme(context,
                              color: colorScheme(context).outline)
                          .bodyMedium,
                    ),
                    Padding(
                      padding: context.padding(left: 8, right: 16),
                      child: Text(
                        '12,5k',
                        style: AppFont().fontTheme(context).bodyMedium,
                      ),
                    ),
                    Text(
                      'Post',
                      style: AppFont()
                          .fontTheme(context,
                              color: colorScheme(context).outline)
                          .bodyMedium,
                    ),
                    Padding(
                      padding: context.padding(left: 8, right: 16),
                      child: Text(
                        '12,5k',
                        style: AppFont().fontTheme(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: context.padding(vertical: 12),
                child: Text(
                  'Hello I’m Product designer, I eager to connect for freelance job',
                  style: AppFont().fontTheme(context).bodyLarge,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(IconsaxOutline.global,
                      color: colorScheme(context).outline),
                  Padding(
                    padding: context.padding(left: 8),
                    child: Text(
                      'Freelancer',
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
                      state.nationality ?? '',
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
                      'Available',
                      style: AppFont()
                          .fontTheme(context,
                              weight: FontWeight.bold,
                              color: colorScheme(context).outline)
                          .bodyMedium,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: context.padding(top: 12, bottom: 22),
                child: Container(
                  padding: context.padding(vertical: 6, horizontal: 24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: colorScheme(context).outline.withOpacity(0.3),
                      )),
                  child: Text(
                    'Top-up',
                    style: AppFont()
                        .fontTheme(context, weight: FontWeight.bold)
                        .bodyLarge,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
