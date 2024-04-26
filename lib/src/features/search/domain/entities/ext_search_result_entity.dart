import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/features/search/data/models/search_bar_result_model.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

extension SearchBarResultModelExt on SearchBarResultModel {
  Widget toWidget(BuildContext context) {
    return Padding(
      padding: context.padding(vertical: 5),
      child: InkWell(
        onTap: () =>
            context.router.push(PublicProfileRoute(userName: username!)),
        child: Container(
          padding: context.padding(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
            color: colorScheme(context).outlineVariant.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              _buildAvatar(context),
              context.sizedBox(width: 10),
              _buildName(context),
              const Spacer(),
              _buildJobTitle(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildJobTitle(BuildContext context) {
    return Text(
      "$jobTitle",
      style: AppFont().fontTheme(context, weight: FontWeight.w600).bodyLarge,
    );
  }

  Widget _buildName(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$firstName $lastName",
          style:
              AppFont().fontTheme(context, weight: FontWeight.w600).bodyLarge,
        ),
        Text(
          "@$username",
          style: AppFont()
              .fontTheme(context,
                  weight: FontWeight.w600, color: colorScheme(context).outline)
              .bodySmall,
        ),
      ],
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return (avatar == null || avatar!.isNotEmpty)
        ? _buildEmptyAvatar(context)
        : MyCacheImage(imageUrl: avatar!);
  }

  Widget _buildEmptyAvatar(BuildContext context) => Container(
        padding: context.padding(all: 1.5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorScheme(context).background,
        ),
        child: Assets.images.home.avatarHolder.image(
          width: context.sizeWidth(60),
          height: context.sizeWidth(60),
        ),
      );
}
