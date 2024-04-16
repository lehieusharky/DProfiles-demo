import 'dart:async';

import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';

class AnimationBackground extends StatefulWidget {
  const AnimationBackground({super.key});

  @override
  State<AnimationBackground> createState() => _AnimationBackgroundState();
}

class _AnimationBackgroundState extends State<AnimationBackground>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    MyColor.green58BD7D,
    MyColor.green58BD7D.withOpacity(0.8),
    MyColor.green58BD7D.withOpacity(0.5),
  ];

  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = MyColor.green58BD7D.withOpacity(0.8);
  Color topColor = MyColor.green58BD7D;
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = const Color(0xff33267C);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}
