import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/features/post/data/models/post_model.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

extension PostModelExt on PostModel {
  Widget toWidget(
    BuildContext context, {
    VoidCallback? onLikeClick,
    VoidCallback? onCommentClick,
    VoidCallback? onShareClick,
  }) {
    return Padding(
      padding: context.padding(vertical: 10),
      child: _buildBody(context),
    );
  }

  Widget _buildBody(
    BuildContext context, {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: context.padding(right: 12),
                child: _buildAvatar(context),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user!.username ?? '',
                      style: AppFont()
                          .fontTheme(context, weight: FontWeight.w600)
                          .bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (content != null)
            Padding(
              padding: context.padding(top: 16),
              child: Text(
                content!,
                style: AppFont()
                    .fontTheme(context, height: 1.5, letterSpacing: 0.5)
                    .bodyMedium,
              ),
            ),
          context.sizedBox(height: 5),
          if (imageUrl != null && imageUrl!.isNotEmpty)
            SizedBox(
              height: context.sizeHeight(200),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: imageUrl!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                        padding: context.padding(right: 10),
                        child: MyCachedImage(
                            height: 200,
                            width: context.width * 0.7,
                            imageUrl: imageUrl![index]),
                      )),
            ),
          // ReactionPost(
          //   likes: noOfLike!,
          //   comments: noOfComment!,
          //   shares: noOfShare!,
          //   onLikeClick: () {},
          //   onCommentClick: onCommentClick,
          //   onShareClick: onShareClick,
          // ),
        ],
      ),
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return (user!.avatar == null)
        ? Assets.images.home.avatarHolder.image(
            width: context.sizeWidth(40),
            height: context.sizeWidth(40),
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: MyCachedImage(
                width: context.sizeWidth(40),
                height: context.sizeWidth(40),
                imageUrl:
                    'https://d3v3a2vsni37rv.cloudfront.net/${user!.avatar}'));
  }
}

class ReactionPost extends StatelessWidget {
  final int likes;
  final int comments;
  final int shares;
  final VoidCallback? onLikeClick;
  final VoidCallback? onCommentClick;
  final VoidCallback? onShareClick;
  final bool liked;

  const ReactionPost({
    super.key,
    required this.likes,
    required this.comments,
    required this.shares,
    this.onLikeClick,
    this.onCommentClick,
    this.onShareClick,
    this.liked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Tuple4(
          liked
              ? const Icon(IconsaxBold.heart)
              : const Icon(IconsaxOutline.heart),
          likes,
          liked,
          onLikeClick,
        ),
        Tuple4(
          const Icon(IconsaxOutline.message),
          comments,
          false,
          onCommentClick,
        ),
        Tuple4(
          const Icon(IconsaxOutline.cloud_sunny),
          shares,
          false,
          onShareClick,
        ),
      ]
          .map(
            (e) => _buildAction(
              context,
              e.item1,
              e.item2,
              e.item3,
              e.item4,
            ),
          )
          .toList(),
    );
  }

  Widget _buildAction(
    BuildContext context,
    Widget icon,
    int value,
    bool filled,
    VoidCallback? onTap,
  ) {
    return InkWell(
      onTap: onTap,
      splashFactory: NoSplash.splashFactory,
      child: Padding(
        padding: context.padding(right: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            Padding(
              padding: context.padding(left: 8, vertical: 16),
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
      ),
    );
  }
}
