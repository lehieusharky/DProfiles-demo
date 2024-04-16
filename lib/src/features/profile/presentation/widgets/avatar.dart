import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class AvatarProfile extends StatelessWidget {
  const AvatarProfile({super.key});

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
                Assets.images.profile.profileBackground.image(),
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
    return Container(
      padding: context.padding(all: 1.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorScheme(context).background,
      ),
      child: Assets.images.home.avatarHolder.image(
        width: context.sizeWidth(96),
        height: context.sizeWidth(96),
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
      padding: context.padding(horizontal: 20, top: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.icons.iconMenu.svg(
              colorFilter:
                  const ColorFilter.mode(MyColor.getWhite, BlendMode.srcIn)),
          _buildUploadWidget(context),
        ],
      ),
    );
  }
}
