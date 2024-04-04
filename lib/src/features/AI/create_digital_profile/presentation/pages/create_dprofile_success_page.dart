import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/widgets/path_direction.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CreateDigitalProfileSuccessPage extends StatelessWidget {
  const CreateDigitalProfileSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      useAppBar: true,
      titleWidget: Assets.icons.logos.homeLogo.svg(),
      body: SingleChildScrollView(
          child: Column(children: [
        PathDirection(
            currentPage: 'Create Digital Profile',
            padding: context.padding(bottom: 8, horizontal: 20)),
        Container(
          height: context.sizeHeight(205),
          padding: context.padding(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(color: colorScheme(context).secondary),
          child: Column(
            children: [
              _buildTitle(context),
            ],
          ),
        ),
      ])),
    );
  }

  Widget _buildIcon(BuildContext context) =>
      Assets.images.aiFeatures.createAiCharacterIcon
          .image(width: context.sizeWidth(85), fit: BoxFit.cover);

  Widget _buildTitle(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(IconsaxOutline.arrow_left,
              color: MyColor.getWhite, size: 25),
          Row(
            children: [
              Expanded(
                  child: Text('dProfile',
                      style: AppFont()
                          .fontTheme(context,
                              weight: FontWeight.w700,
                              height: 1.3,
                              color: MyColor.getWhite)
                          .titleSmall)),
              _buildIcon(context),
            ],
          ),
          Padding(
            padding: context.padding(top: 8),
            child: Container(
              padding: context.padding(vertical: 10, horizontal: 8),
              decoration: BoxDecoration(
                color: colorScheme(context).primary,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  const Icon(
                    IconsaxOutline.profile_circle,
                    color: MyColor.getWhite,
                  ),
                  Padding(
                    padding: context.padding(left: 2),
                    child: Text(
                      'Create New Profile',
                      style: AppFont()
                          .fontTheme(context,
                              color: MyColor.getWhite, weight: FontWeight.w600)
                          .bodyMedium,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: context.padding(horizontal: 8),
                    decoration: BoxDecoration(
                        color: colorScheme(context).secondary,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Text(
                          '-3',
                          style: AppFont()
                              .fontTheme(context,
                                  color: colorScheme(context).primary,
                                  weight: FontWeight.bold)
                              .bodyMedium,
                        ),
                        context.sizedBox(width: 5),
                        Icon(IconsaxBold.wallet_1,
                            color: colorScheme(context).outlineVariant),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );
}
