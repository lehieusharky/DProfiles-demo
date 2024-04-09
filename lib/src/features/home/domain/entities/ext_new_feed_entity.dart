import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/home/data/models/new_feed_model.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

extension NewFeedModelExt on NewFeedModel {
  Widget toWidget(BuildContext context) {
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
                        'dProfiles',
                        style: AppFont()
                            .fontTheme(context, weight: FontWeight.w600)
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
                                padding:
                                    context.padding(horizontal: 8, vertical: 3),
                                decoration: BoxDecoration(
                                    color: colorScheme(context).primary,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Text(
                                  'Following',
                                  style: AppFont()
                                      .fontTheme(context,
                                          color:
                                              colorScheme(context).background)
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
                    postCreatedTs.toString().convertToDDMMYYFormat(),
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
          if (postContent != null)
            Padding(
              padding: context.padding(top: 16),
              child: Text(
                postContent!,
                style: AppFont().fontTheme(context).bodyMedium,
              ),
            ),
          Padding(
            padding: context.padding(vertical: 25),
            child: Assets.images.home.live.image(),
          ),
          _Reactions(
            likes: noOfLike!,
            comments: noOfComment!,
            shares: noOfShare!,
          ),
        ],
      ),
    );
  }
}

class _Reactions extends StatelessWidget {
  final int likes;
  final int comments;
  final int shares;

  const _Reactions(
      {required this.likes, required this.comments, required this.shares});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Tuple3(const Icon(IconsaxOutline.heart), likes, 0),
        Tuple3(const Icon(IconsaxOutline.message), comments, 1),
        Tuple3(const Icon(IconsaxOutline.cloud_sunny), shares, 2),
        const Tuple3(Icon(IconsaxOutline.eye), 1124, 3),
      ]
          .map((e) =>
              _buildAction(context, e.item1, e.item2, isLast: e.item3 == 3))
          .toList(),
    );
  }

  Widget _buildAction(BuildContext context, Widget icon, int value,
      {bool? isLast}) {
    return Padding(
      padding: context.padding(right: 16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          Padding(
            padding: context.padding(left: 8),
            child: Text(
              value.toString(),
              style: AppFont()
                  .fontTheme(
                    context,
                    weight: FontWeight.w400,
                  )
                  .bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
