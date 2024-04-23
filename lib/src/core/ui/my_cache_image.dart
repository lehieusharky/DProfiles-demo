import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

class MyCacheImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? opacity;
  final Widget? errorWidget;

  const MyCacheImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.borderRadius,
    this.opacity,
    this.errorWidget,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        fit: BoxFit.cover,
        width: width,
        height: height,
        imageUrl: imageUrl.isNotEmpty
            ? imageUrl
            : 'https://www.investopedia.com/thmb/pevv6dw9Hn-DK8L2tUmmyLXvcpw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/CryptoSpotlight-Recirc2-52a72e7b82124c83b1818c6f4fa14344.jpg',
        imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius ?? 5),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  opacity: opacity ?? 1,
                ),
              ),
            ),
        placeholder: (context, url) => MyShimmer(count: 1, height: height),
        errorWidget: (context, url, error) =>
            errorWidget ??
            Assets.icons.logos.dWhitePWhiteDprofileGreen.image());
  }
}
