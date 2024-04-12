import 'dart:math';

import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class MyShimmer extends StatelessWidget {
  const MyShimmer({super.key, this.height, this.count, this.margin});

  final double? height;
  final int? count;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height ?? 500,
        width: context.width,
        child: ListView.separated(
          itemCount: count ?? 5,
          separatorBuilder: (_, __) => context.sizedBox(height: 15),
          itemBuilder: (_, i) {
            final delay = (i * 100);
            return Container(
              decoration: BoxDecoration(
                  color: sharePreference.isDarkMode()
                      ? Theme.of(context).colorScheme.outline.withOpacity(0.5)
                      : Theme.of(context)
                          .colorScheme
                          .outlineVariant
                          .withOpacity(0.1),
                  borderRadius: BorderRadius.circular(context.sizeHeight(10))),
              margin: context.padding(horizontal: 0),
              padding: margin ?? context.padding(all: 16),
              child: Row(
                children: [
                  FadeShimmer.round(
                      size: context.sizeHeight(60),
                      fadeTheme: _fadeTheme(),
                      millisecondsDelay: delay),
                  context.sizedBox(width: 10),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Tuple3((Random().nextInt(130) + 80), 15, ''),
                        Tuple3((Random().nextInt(130) + 80), 8, ''),
                        Tuple3((Random().nextInt(130) + 80), 15, ''),
                        Tuple3((Random().nextInt(130) + 80), 8, ''),
                      ]
                          .map(
                            (e) => Padding(
                              padding: context.padding(vertical: 5),
                              child: FadeShimmer(
                                height: context.sizeHeight(e.item2.toDouble()),
                                width: context.sizeHeight(e.item1.toDouble()),
                                radius: 4,
                                millisecondsDelay: delay,
                                fadeTheme: _fadeTheme(),
                              ),
                            ),
                          )
                          .toList())
                ],
              ),
            );
          },
        ));
  }

  FadeTheme _fadeTheme() =>
      sharePreference.isDarkMode() ? FadeTheme.dark : FadeTheme.light;
}
