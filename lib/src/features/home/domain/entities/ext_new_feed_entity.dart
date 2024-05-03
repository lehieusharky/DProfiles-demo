import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/cubit/feed_detail_cubit.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/feed_menu.dart';
import 'package:demo_dprofiles/src/features/home/data/models/new_feed_model.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';

extension NewFeedModelExt on NewFeedModel {
  Widget toWidget(
    BuildContext context, {
    VoidCallback? onLikeClick,
    VoidCallback? onCommentClick,
    VoidCallback? onShareClick,
  }) {
    final bloc = context.read<FeedDetailCubit>();
    return _buildBody(context, bloc.state.feed);
  }

  Widget _buildBody(
    BuildContext context,
    NewFeedModel feed, {
    VoidCallback? onLikeClick,
    VoidCallback? onCommentClick,
    VoidCallback? onShareClick,
  }) {
    final bloc = context.read<FeedDetailCubit>();
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
                      feed.user?.username ?? '',
                      style: AppFont()
                          .fontTheme(context, weight: FontWeight.w600)
                          .bodyLarge,
                    ),
                    Text(
                      feed.postCreatedTs.toString().convertToDDMMYYFormat(),
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
                  _buildMenu(context),
                ],
              )
            ],
          ),
          if (feed.postContent != null)
            Padding(
              padding: context.padding(top: 16),
              child: Text(
                feed.postContent!,
                style: AppFont()
                    .fontTheme(context, height: 1.5, letterSpacing: 0.5)
                    .bodyMedium,
              ),
            ),
          Padding(
              padding: context.padding(top: 25),
              child: MyCachedImage(
                imageUrl: feed.postImageUrl ?? '',
                errorWidget: Assets.images.home.live.image(),
              )),
          ReactionPost(
            likes: feed.noOfLike!,
            comments: feed.noOfComment!,
            shares: feed.noOfShare!,
            liked: feed.liked,
            onLikeClick: () {
              bloc.like();
              onLikeClick?.call();
            },
            onCommentClick: onCommentClick,
            onShareClick: onShareClick,
          ),
        ],
      ),
    );
  }

  Widget _buildMenu(BuildContext context) {
    return const FeedMenu();
  }
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
