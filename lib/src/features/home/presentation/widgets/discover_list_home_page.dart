import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class DiscoverListHomePage extends StatelessWidget {
  const DiscoverListHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: context.padding(bottom: 28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: context.padding(right: 12),
                    child: CircleAvatar(radius: context.sizeHeight(25)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Howard Barton',
                            style: AppFont()
                                .fontTheme(context,
                                    weight: FontWeight.w500,
                                    color: colorScheme(context).onTertiary)
                                .bodyLarge,
                          ),
                          Padding(
                            padding: context.padding(left: 50),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: context.padding(
                                        horizontal: 8, vertical: 3),
                                    decoration: BoxDecoration(
                                        color: colorScheme(context).primary,
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Text(
                                      'Following',
                                      style: AppFont()
                                          .fontTheme(context,
                                              color: colorScheme(context)
                                                  .background)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: context.padding(left: 10),
                                  child: const Icon(IconsaxOutline.more),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        '2 hours ago',
                        style: AppFont()
                            .fontTheme(context,
                                weight: FontWeight.w400,
                                color: colorScheme(context).outline)
                            .bodySmall,
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: context.padding(top: 16),
                child: Text(
                  'The Luxury Of Traveling With Yacht Charter Companies',
                  style: AppFont().fontTheme(context).bodyMedium,
                ),
              ),
              Padding(
                padding: context.padding(vertical: 25),
                child: Assets.images.home.live.image(),
              ),
              Row(
                children: [
                  const Icon(IconsaxOutline.heart),
                  Padding(
                    padding: context.padding(left: 8, right: 16),
                    child: Text(
                      '1125',
                      style: AppFont()
                          .fontTheme(
                            context,
                            weight: FontWeight.w400,
                          )
                          .bodyMedium,
                    ),
                  ),
                  const Icon(IconsaxOutline.message),
                  Padding(
                    padding: context.padding(left: 8, right: 16),
                    child: Text(
                      '345',
                      style: AppFont()
                          .fontTheme(
                            context,
                            weight: FontWeight.w400,
                          )
                          .bodyMedium,
                    ),
                  ),
                  const Icon(IconsaxOutline.cloud_sunny),
                  Padding(
                    padding: context.padding(left: 8, right: 16),
                    child: Text(
                      '348',
                      style: AppFont()
                          .fontTheme(
                            context,
                            weight: FontWeight.w400,
                          )
                          .bodyMedium,
                    ),
                  ),
                  const Spacer(),
                  const Icon(IconsaxOutline.eye),
                  Padding(
                    padding: context.padding(left: 8),
                    child: Text(
                      '1124',
                      style: AppFont()
                          .fontTheme(
                            context,
                            weight: FontWeight.w400,
                          )
                          .bodyMedium,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
