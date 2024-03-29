import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/AI/presentation/write_profile/pages/write_profile_page.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

extension WriteProfilePageExt on WriteProfilePage {
  List<Widget> actions(
    BuildContext context, {
    VoidCallback? onAction3Pressed,
  }) =>
      [
        AppFlatButton(context).elevatedButton(
          onPressed: () {},
          title: 'Connect wallet',
        ),
        Padding(
          padding: context.padding(horizontal: 5),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(IconsaxOutline.menu_1),
          ),
        ),
      ];
}
