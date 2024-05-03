import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:demo_dprofiles/src/utils/presentation/animation_background.dart';
import 'package:flutter/material.dart';

extension AICharacterBotModelExt on AICharacterBotModel {
  Widget toPopularBot(BuildContext context, bool isPopularBot) {
    return Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: const AnimationBackground()),
        Column(
          children: [
            if (definition != null && definition!.shortDescription != null)
              Padding(
                padding: context.padding(top: 60, horizontal: 10),
                child: Text(
                  definition!.shortDescription!,
                  style: AppFont()
                      .fontTheme(context,
                          color: MyColor.getWhite, weight: FontWeight.w600)
                      .bodyMedium,
                ),
              ),
            const Spacer(),
            Container(
              height: context.sizeHeight(78),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    colorScheme(context).secondary,
                    colorScheme(context).secondary.withOpacity(0.6)
                  ],
                ),
              ),
              child: Padding(
                padding: context.padding(horizontal: 8),
                child: InkWell(
                  onTap: () => context.router.push(MyAICharacterRoute(
                      chatBotID: id!, isPopularBot: isPopularBot)),
                  child: Row(
                    children: [
                      _buildAvatar(context),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (name != null)
                              Text(
                                name!,
                                style: AppFont()
                                    .fontTheme(context,
                                        color: MyColor.getWhite,
                                        weight: FontWeight.w600)
                                    .bodyMedium,
                              ),
                            Padding(
                              padding: context.padding(top: 2),
                              child: Text(
                                "@$name",
                                style: AppFont()
                                    .fontTheme(context, color: MyColor.getWhite)
                                    .bodySmall,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: context.padding(all: 12),
          child: Align(
            alignment: Alignment.topLeft,
            child: _buildSummary(context),
          ),
        ),
        Padding(
          padding: context.padding(all: 12),
          child: Align(
            alignment: Alignment.topRight,
            child: _buildChatButton(context, isPopularBot),
          ),
        )
      ],
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return Padding(
        padding: context.padding(right: 15),
        child: (avatar == null)
            ? CircleAvatar(radius: context.sizeWidth(25))
            : CircleAvatar(
                radius: context.sizeWidth(25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: MyCachedImage(
                      imageUrl:
                          'https://d3v3a2vsni37rv.cloudfront.net/$avatar'),
                ),
              ));
  }

  Widget _buildChatButton(BuildContext context, bool isPopularBot) {
    return InkWell(
      onTap: () => context.router
          .push(ChatWithAiRoute(botId: id!, isPopularBot: isPopularBot)),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: context.sizeWidth(4)),
        decoration: BoxDecoration(
          color: MyColor.getWhite,
          borderRadius: BorderRadius.circular(16),
        ),
        width: context.sizeWidth(58),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Chat',
              style: AppFont()
                  .fontTheme(context, color: MyColor.gray777E90)
                  .bodySmall,
            ),
            SizedBox(width: context.sizeWidth(2)),
            Assets.icons.iconArrowRight.svg(),
          ],
        ),
      ),
    );
  }

  Widget _buildSummary(BuildContext context) {
    return Row(
      children: [
        Assets.icons.iconChat.svg(color: MyColor.getWhite),
        Text(
          '10 k',
          style:
              AppFont().fontTheme(context, color: MyColor.getWhite).bodyMedium,
        ),
      ],
    );
  }
}
