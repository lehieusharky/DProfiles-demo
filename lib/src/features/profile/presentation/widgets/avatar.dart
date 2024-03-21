import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class AvatarProfile extends StatelessWidget {
  const AvatarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Assets.images.profile.profileBackground.image(),
                Padding(
                  padding: context.padding(horizontal: 20, top: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        IconsaxOutline.menu_1,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: context.padding(top: 50),
                        child: Container(
                          padding: context.padding(all: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: colorScheme(context).background,
                          ),
                          child: const Icon(IconsaxOutline.document_upload),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 50)
          ],
        ),
        Padding(
          padding: context.padding(horizontal: 20),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                  padding: context.padding(all: 1.5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorScheme(context).background,
                  ),
                  child: const CircleAvatar(radius: 50)),
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
        ),
      ],
    );
  }
}
