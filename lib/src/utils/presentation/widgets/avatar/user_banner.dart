import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

class UserBanner extends StatelessWidget {
  final String? bannerUrlKey;
  const UserBanner({super.key, this.bannerUrlKey});

  @override
  Widget build(BuildContext context) {
    return (bannerUrlKey == null) ? _buildEmptyBanner() : _buildBanner(context);
  }

  Widget _buildEmptyBanner() {
    return Assets.images.profile.profileBackground.image();
  }

  Widget _buildBanner(BuildContext context) {
    return MyCachedImage(
        width: context.width,
        height: context.sizeHeight(150),
        // TODO get domain from dotenv
        imageUrl: 'https://d3v3a2vsni37rv.cloudfront.net/$bannerUrlKey');
  }
}
