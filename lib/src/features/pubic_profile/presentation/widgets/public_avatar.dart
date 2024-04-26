import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:ficonsax/ficonsax.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AvatarPublicProfile extends StatelessWidget {
  const AvatarPublicProfile({super.key});

  @override
  Widget build(BuildContext context) {
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
                          icon: const Icon(IconsaxOutline.arrow_left,
                              color: MyColor.getWhite)),
                    )
                  ],
                ),
                _buildBackgroundAction(context),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
        Padding(
          padding: context.padding(horizontal: 20),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              _buildAvatar(context),
              _buildEditWidget(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return InkWell(
      onTap: () => context.read<ProfileBloc>().add(const ProfileUploadAvatar()),
      child: Container(
        padding: context.padding(all: 1.5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorScheme(context).background,
        ),
        child: Assets.images.home.avatarHolder.image(
          width: context.sizeWidth(96),
          height: context.sizeWidth(96),
        ),
      ),
    );
  }

  Widget _buildEditWidget(BuildContext context) {
    return Container(
      padding: context.padding(all: 1),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorScheme(context).background,
      ),
      child: Container(
        padding: context.padding(all: 8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorScheme(context).primary,
        ),
        child: Assets.icons.iconEdit.svg(
          width: context.sizeWidth(18),
          colorFilter:
              const ColorFilter.mode(MyColor.getWhite, BlendMode.srcIn),
        ),
      ),
    );
  }

  Widget _buildUploadWidget(BuildContext context) {
    return Container(
      padding: context.padding(all: 10),
      margin: context.padding(top: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: colorScheme(context).background,
      ),
      child: Assets.icons.iconUpload.svg(),
    );
  }

  Widget _buildBackgroundAction(BuildContext context) {
    return Padding(
      padding: context.padding(horizontal: 20, top: 40),
      child: _buildUploadWidget(context),
    );
  }
}