import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../theme/app_color_scheme.dart';

class MyFeedListShimmer extends StatelessWidget {
  const MyFeedListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildFeedShimmer(),
        _buildFeedShimmer(),
        _buildFeedShimmer(),
      ],
    );
  }

  Widget _buildFeedShimmer(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: const MyRoundedShimmer(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  child: const MyRectangleShimmer(width: 100, height: 8),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 9),
                  child: const MyRectangleShimmer(width: 250, height: 8),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 9),
                  child: const MyRectangleShimmer(width: 250, height: 8),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


class MyRoundedShimmer extends StatelessWidget {
  final double? height, width, radius;

  const MyRoundedShimmer({
    Key? key,
    this.width,
    this.height,
    this.radius
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade200,
      highlightColor: Colors.grey.shade300,
      child: Container(
        width: context.sizeWidth(width ?? 50),
        height: context.sizeHeight(height ?? 50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 50)),
        ),
      ),
    );
  }
}

class MyRectangleShimmer extends StatelessWidget {
  final double? width, height;

  const MyRectangleShimmer({Key? key, this.width, this.height })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade200,
      highlightColor: Colors.grey.shade300,
      child: Container(
        height: context.sizeHeight(height ?? 50),
        width: context.sizeWidth(width ?? 50),
        color: Colors.white,

      ),
    );
  }
}