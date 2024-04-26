import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class HeaderMyAICharacter extends StatefulWidget {
  final AICharacterBotModel botInfo;
  final bool isPopularBot;

  const HeaderMyAICharacter({
    super.key,
    required this.botInfo,
    required this.isPopularBot,
  });

  @override
  State<HeaderMyAICharacter> createState() => _HeaderMyAICharacterState();
}

class _HeaderMyAICharacterState extends State<HeaderMyAICharacter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                _buildBackground(),
                const SizedBox(height: 50),
              ],
            ),
            _buildAvatar(widget.botInfo.avatar),
          ],
        ),
        Padding(
          padding: context.padding(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: context.padding(top: 6, bottom: 8),
                child: _buildName(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCountOfChat(appLocal(context).conversations, '120'),
                  context.sizedBox(width: 4),
                  _buildCountOfChat(appLocal(context).messages, '120'),
                ],
              ),
              Padding(
                padding: context.padding(top: 14, bottom: 28),
                child: Text(
                  widget.botInfo.definition!.shortDescription ?? '',
                  style: AppFont().fontTheme(context, height: 1.5).bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: AppFlatButton(context).elevatedButton(
                        width: context.width,
                        title: appLocal(context).chat,
                        onPressed: () => context.router.push(ChatWithAiRoute(
                            botId: widget.botInfo.id!,
                            isPopularBot: widget.isPopularBot))),
                  ),
                  context.sizedBox(width: 12),
                  IconButton.outlined(
                    onPressed: () {},
                    color: colorScheme(context).primary,
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          width: 1, color: colorScheme(context).primary),
                    ),
                    icon: const Icon(IconsaxOutline.more),
                  )
                ],
              ),
              Padding(
                padding: context.padding(top: 35),
                child: Container(
                  decoration: BoxDecoration(
                    color: colorScheme(context).outlineVariant.withOpacity(0.1),
                    border:
                        Border.all(color: colorScheme(context).outlineVariant),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: context.padding(vertical: 12, horizontal: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            appLocal(context).about,
                            style: AppFont()
                                .fontTheme(context,
                                    weight: FontWeight.w600,
                                    color: colorScheme(context).primary)
                                .bodyLarge,
                          ),
                          const Icon(IconsaxOutline.edit_2)
                        ],
                      ),
                      Padding(
                        padding: context.padding(top: 8),
                        child: Text(
                          widget.botInfo.definition!.longDescription ?? "",
                          style: AppFont()
                              .fontTheme(context, height: 1.7)
                              .bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildCountOfChat(String title, String value) {
    return Container(
      padding: context.padding(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: colorScheme(context).outlineVariant,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: AppFont()
                .fontTheme(context,
                    weight: FontWeight.bold,
                    color: colorScheme(context).outline)
                .bodyMedium,
          ),
          Padding(
            padding: context.padding(left: 16),
            child: Text(
              value,
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.w600)
                  .bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildName() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.botInfo.name ?? '',
          style:
              AppFont().fontTheme(context, weight: FontWeight.bold).labelMedium,
        ),
        Padding(
          padding: context.padding(top: 4),
          child: Text(
            "@${widget.botInfo.name}",
            style: AppFont()
                .fontTheme(context, color: colorScheme(context).outline)
                .bodySmall,
          ),
        ),
      ],
    );
  }

  Widget _buildBackground() => Stack(
        alignment: Alignment.topRight,
        children: [
          Assets.images.profile.profileBackground.image(),
          Padding(
            padding: context.padding(horizontal: 20, top: 95),
            child: Container(
              padding: context.padding(all: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: colorScheme(context).background,
              ),
              child: const Icon(IconsaxOutline.document_upload),
            ),
          )
        ],
      );

  Widget _buildAvatar(String? avatar) => Padding(
        padding: context.padding(horizontal: 20),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                    padding: context.padding(all: 1.5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorScheme(context).background,
                    ),
                    child: _buildAvatar2(context, avatar)),
                Container(
                    padding: context.padding(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: colorScheme(context).secondary,
                    ),
                    child: Text(
                      'AI',
                      style: AppFont()
                          .fontTheme(context, color: MyColor.getWhite)
                          .bodyLarge,
                    )),
              ],
            ),
            Container(
              padding: context.padding(all: 1),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorScheme(context).background,
              ),
              child: Container(
                padding: context.padding(all: 8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorScheme(context).primary,
                ),
                child: const Icon(
                  IconsaxOutline.edit_2,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
      );

  Widget _buildAvatar2(BuildContext context, String? avatar) {
    return (avatar == null)
        ? CircleAvatar(radius: context.sizeWidth(40))
        : CircleAvatar(
            radius: context.sizeWidth(40),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: MyCacheImage(
                  imageUrl: 'https://d3v3a2vsni37rv.cloudfront.net/$avatar'),
            ),
          );
  }
}
