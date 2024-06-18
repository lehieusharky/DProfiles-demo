import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String? avatarUrlKey;
  final double? radius;
  final double? padding;

  const UserAvatar({
    super.key,
    this.avatarUrlKey,
    this.radius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padding(all: padding ?? 1.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorScheme(context).background,
      ),
      child: (avatarUrlKey == null)
          ? _buildEmptyAvatar(context)
          : _buildAvatar(context),
    );
  }

  Widget _buildEmptyAvatar(BuildContext context) {
    return Assets.images.home.avatarHolder.image(
      width: context.sizeWidth(_radius()),
      height: context.sizeWidth(_radius()),
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: MyCachedImage(
          width: context.sizeWidth(_radius()),
          height: context.sizeWidth(_radius()),
          // TODO get domain from dotenv
          imageUrl: 'https://d2qzasm1g6lr7.cloudfront.net/$avatarUrlKey'),
    );
  }

  double _radius() => radius ?? 96;
}
