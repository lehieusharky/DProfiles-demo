import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class SettingButton extends StatelessWidget {
  final String title;
  final String? description;
  final VoidCallback onPressed;
  final IconData iconData;
  final Widget? trailing;

  const SettingButton({
    Key? key,
    required this.title,
    this.description,
    required this.onPressed,
    required this.iconData,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.red,
      borderRadius: BorderRadius.circular(context.sizeWidth(16)),
      onTap: onPressed,
      child: Container(
        height: context.sizeHeight(70),
        padding: context.padding(vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: context.padding(horizontal: 20),
              child: Icon(iconData),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppFont().fontTheme(context).labelSmall,
                ),
                context.sizedBox(height: 5),
                description != null
                    ? Text(
                        description!,
                        style: AppFont()
                            .fontTheme(context,
                                color: colorScheme(context).secondary)
                            .bodyMedium,
                      )
                    : const SizedBox.shrink()
              ],
            ),
            const Spacer(),
            Padding(
              padding: context.padding(horizontal: 10),
              child: trailing ?? const Icon(IconsaxOutline.arrow_right_3),
            ),
          ],
        ),
      ),
    );
  }
}
