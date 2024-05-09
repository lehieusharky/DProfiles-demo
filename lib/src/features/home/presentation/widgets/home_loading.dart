import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/cupertino.dart';


class NewsFeedLoading extends StatelessWidget{
  const NewsFeedLoading({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(child:
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _ShimmerLoading(),
        _ShimmerLoading(),
        _ShimmerLoading(),


    ],),
    );

  }
}

class _ShimmerLoading extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      const delay = 200;
      return Container(
        decoration: BoxDecoration(
            color: MyColor.getWhite,
            borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.all(16),
        child:  Column(
          children: [
            Row(
              children:  [
                FadeShimmer.round(
                  size: 60,
                  fadeTheme: FadeTheme.light,
                  millisecondsDelay: delay,
                ),
                 const SizedBox(
                  width: 8,
                ),
                 const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeShimmer(
                      height: 12,
                      width: 100,
                      radius: 4,
                      millisecondsDelay: delay,
                      fadeTheme: FadeTheme.light,
                    ),
                    SizedBox(height: 8,),
                    FadeShimmer(
                      height: 12,
                      width: 250,
                      radius: 4,
                      millisecondsDelay: delay,
                      fadeTheme: FadeTheme.light,
                    ),
                    SizedBox(height: 8,),
                    FadeShimmer(
                      height: 12,
                      width: 170,
                      radius: 4,
                      millisecondsDelay: delay,
                      fadeTheme: FadeTheme.light,
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      );
  }
}