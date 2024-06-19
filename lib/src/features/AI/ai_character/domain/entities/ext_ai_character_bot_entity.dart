import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

extension AICharacterBotModelExt on AICharacterBotModel {

  double get sizeAvatar => 33;
  double get heightBottomName => 78;

  Widget toPopularBot(BuildContext context, bool isPopularBot) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CachedNetworkImage(
                          fit: BoxFit.fill,
                          imageUrl: _buildAvtUrl,
                          ),
                      ClipRRect(
                        // Clip it cleanly.
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            color: Colors.black.withOpacity(0.5),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                  InkWell(
                    onTap: () => context.router
                          .push(ChatWithAiRoute(botId: id!, isPopularBot: isPopularBot)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Padding(
                              padding: context.padding(top: 40, left: 8),
                              child:  SvgPicture.asset(Assets.icons.iconQuote.path)),
                          if (definition != null && definition!.shortDescription != null)
                            Padding(
                              padding: context.padding(top: 5, horizontal: 10),
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                definition!.shortDescription!,
                                style: AppFont()
                                    .fontTheme(context,
                                    color: MyColor.getWhite, weight: FontWeight.w400)
                                    .bodyLarge,
                              ),
                            ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //
            Container(
              height: context.sizeHeight(heightBottomName),
              decoration:  BoxDecoration(
                color: MyColor.getWhite.withOpacity(0.7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    offset: const Offset(0, 4),
                    blurRadius: 12.0,
                    spreadRadius: 0,
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: context.padding(horizontal: 8, top: 8),
                child: InkWell(
                  onTap: () => context.router.push(MyAICharacterRoute(
                      chatBotID: id!, isPopularBot: isPopularBot)),
                  child: Row(
                    children: [

                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (name != null)
                              Text(
                                name!,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: AppFont()
                                    .fontTheme(context,
                                    weight: FontWeight.w600)
                                    .bodyLarge,
                              ),
                            Padding(
                              padding: context.padding(top: 2),
                              child: Text(
                                "@$name",
                                style: AppFont()
                                    .fontTheme(context,)
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
            ),

          ],
        ),
        Positioned(
            bottom: context.sizeHeight(0 + heightBottomName - sizeAvatar/2),
            left: context.sizeWidth(8),
            child: InkWell(
                onTap: () => context.router.push(MyAICharacterRoute(
                    chatBotID: id!, isPopularBot: isPopularBot)),
                child: _buildAvatar(context))),
        Padding(
          padding: context.padding(all: 12),
          child: Align(
            alignment: Alignment.topLeft,
            child: _buildSummary(context),
          ),
        ),
        // Padding(
        //   padding: context.padding(all: 12),
        //   child: Align(
        //     alignment: Alignment.topRight,
        //     child: _buildChatButton(context, isPopularBot),
        //   ),
        // )
      ],
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return Padding(
        padding: context.padding(right: 15),
        child: (avatar == null)
            ? CircleAvatar(radius: context.sizeWidth(sizeAvatar))
            : CircleAvatar(
                radius: context.sizeWidth(33),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                    border: Border.all(color: Colors.white, width: 1)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: MyCachedImage(
                        imageUrl:
                            'https://d3v3a2vsni37rv.cloudfront.net/$avatar'),
                  ),
                ),
              ));
  }

  String get _buildAvtUrl => 'https://d3v3a2vsni37rv.cloudfront.net/$avatar';

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
              appLocal(context).chat,
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
        const SizedBox(width: 2,),
        Text(
          noOfConversation.toString(),
          style:
              AppFont().fontTheme(context, color: MyColor.getWhite).bodyMedium,
        ),
      ],
    );
  }
}
