import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/features/home/data/models/new_feed_model.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

extension NewFeedModelExt on NewFeedModel {
  Widget toWidget(
    BuildContext context, {
    VoidCallback? onLikeClick,
    VoidCallback? onCommentClick,
    VoidCallback? onShareClick,
  }) {
    return Padding(
      padding: context.padding(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: context.padding(right: 12),
                child: CircleAvatar(
                  radius: context.sizeHeight(20),
                  child: Assets.icons.homeLogo.image(),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DProfiles',
                      style: AppFont()
                          .fontTheme(context, weight: FontWeight.w600)
                          .bodyLarge,
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
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const _FollowingButton(),
                  Padding(
                      padding: context.padding(left: 10),
                      child: InkWell(
                          onTap: () {}, child: Assets.icons.iconMore.svg()))
                ],
              )
            ],
          ),
          if (postContent != null)
            Padding(
              padding: context.padding(top: 16),
              child: Text(
                postContent!,
                style: AppFont()
                    .fontTheme(context, height: 1.5, letterSpacing: 0.5)
                    .bodyMedium,
              ),
            ),
          Padding(
              padding: context.padding(vertical: 25),
              child: MyCacheImage(
                imageUrl: postImageUrl ?? '',
                errorWidget: Assets.images.home.live.image(),
              )),
          ReactionPost(
            likes: noOfLike!,
            comments: noOfComment!,
            shares: noOfShare!,
            onLikeClick: onCommentClick,
            onCommentClick: onCommentClick,
            onShareClick: onShareClick,
          ),
        ],
      ),
    );
  }

  // void _showPhotoView(BuildContext context) {
  //   showMyBottomSheet(
  //       context: context,
  //       child: Container(
  //         height: context.height,
  //         child: PhotoViewGallery.builder(
  //           scrollPhysics: const BouncingScrollPhysics(),
  //           builder: (BuildContext context, int index) {
  //             return PhotoViewGalleryPageOptions(
  //               imageProvider: AssetImage(Assets.images.home.live.path),
  //               initialScale: PhotoViewComputedScale.contained * 0.9,
  //             );
  //           },
  //           itemCount: 1,
  //           loadingBuilder: (context, event) => MyLoading(),
  //           backgroundDecoration:
  //               BoxDecoration(color: colorScheme(context).background),
  //         ),
  //       ));
  // }
}

class _FollowingButton extends StatelessWidget {
  const _FollowingButton();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: context.padding(horizontal: 12, vertical: 5),
        decoration: BoxDecoration(
            color: colorScheme(context).primary,
            borderRadius: BorderRadius.circular(16)),
        child: Text(
          'Following',
          style: AppFont()
              .fontTheme(context, color: colorScheme(context).background)
              .bodyMedium,
        ),
      ),
    );
  }
}

class ReactionPost extends StatelessWidget {
  final int likes;
  final int comments;
  final int shares;
  final VoidCallback? onLikeClick;
  final VoidCallback? onCommentClick;
  final VoidCallback? onShareClick;

  const ReactionPost({
    super.key,
    required this.likes,
    required this.comments,
    required this.shares,
    this.onLikeClick,
    this.onCommentClick,
    this.onShareClick,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Tuple3(
          InkWell(
            onTap: onLikeClick,
            child: const Icon(IconsaxOutline.heart),
          ),
          likes,
          0,
        ),
        Tuple3(
          InkWell(
            onTap: onCommentClick,
            child: const Icon(IconsaxOutline.message),
          ),
          comments,
          0,
        ),
        Tuple3(
          InkWell(
            onTap: onShareClick,
            child: const Icon(IconsaxOutline.cloud_sunny),
          ),
          shares,
          0,
        ),
      ].map((e) => _buildAction(context, e.item1, e.item2)).toList(),
    );
  }

  Widget _buildAction(BuildContext context, Widget icon, int value) {
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
