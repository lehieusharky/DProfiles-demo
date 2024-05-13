import 'dart:ffi';

import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';

import '../../theme/app_color_scheme.dart';

class MyListFeedShimmer extends StatelessWidget {
  final int count;
  const MyListFeedShimmer({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(left: 20),
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index){
            return _buildFeedShimmer(context);
          },
          separatorBuilder: (context, index){
            return const SizedBox(height: 10,);
          },
          itemCount: count)
    );

  }

  Widget _buildFeedShimmer(BuildContext context) {
    return Row(
          children: [
    Container(
      margin: const EdgeInsets.only(right: 10),
      child: const MyShimmer(
        width: 50,
        height: 50,
        radius: 50,
      ),
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 7),
          child: const MyShimmer(
            width: 100,
            height: 8,
            radius: 50,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 9),
          child: const MyShimmer(
            width: 250,
            height: 8,
            radius: 50,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 9),
          child: const MyShimmer(
            width: 200,
            height: 8,
            radius: 50,
          ),
        ),
      ],
    )
          ],
        );
  }
}

class MyShimmer extends StatelessWidget {
  final double? height, width, radius;
  final Color? baseColor, highlightColor;
  final Duration? period;
  final ShimmerDirection? direction;

  const MyShimmer(
      {super.key,
      this.height,
      this.width,
      this.radius,
      this.baseColor,
      this.highlightColor,
      this.period,
      this.direction});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? Colors.grey.shade200,
      highlightColor: highlightColor ?? Colors.grey.shade300,
      direction: direction ?? ShimmerDirection.ltr,
      period: period ?? const Duration(milliseconds: 1500),
      child: Container(
        width: context.sizeWidth(width ?? 50),
        height: context.sizeHeight(height ?? 50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 0)),
        ),
      ),
    );
  }
}
