import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ListViewAnimation extends StatelessWidget {
  final int itemCount;
  final List data;
  final Widget child;

  const ListViewAnimation(
      {Key? key,
      required this.itemCount,
      required this.data,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.sizeHeight(500),
      child: AnimationLimiter(
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: itemCount,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              delay: const Duration(milliseconds: 100),
              child: SlideAnimation(
                duration: const Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                child: FadeInAnimation(
                  curve: Curves.fastLinearToSlowEaseIn,
                  duration: const Duration(milliseconds: 2500),
                  child: child,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
