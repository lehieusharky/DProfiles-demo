import 'package:demo_dprofiles/src/core/app_responsive.dart';

import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import 'create_digital_profile_page.dart';

extension CreateAIProfilePageExt on CreateDigitalProfilePage {
  List<Widget> actions(
    BuildContext context, {
    VoidCallback? onAction3Pressed,
  }) =>
      [
        Tuple2(IconsaxOutline.search_normal_1, () {}),
        Tuple2(IconsaxOutline.notification_bing, () {}),
        Tuple2(IconsaxOutline.menu_1, onAction3Pressed),
      ]
          .map((e) =>
              _buildAction(context, iconData: e.item1, onPressed: e.item2))
          .toList();

  Widget _buildAction(
    BuildContext context, {
    VoidCallback? onPressed,
    required IconData iconData,
  }) {
    return Padding(
      padding: context.padding(horizontal: 5),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(iconData),
      ),
    );
  }
}
