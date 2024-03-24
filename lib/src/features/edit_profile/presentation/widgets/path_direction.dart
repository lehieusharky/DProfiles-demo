import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class PathDirection extends StatelessWidget {
  const PathDirection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(bottom: 32),
      child: Container(
        padding: context.padding(vertical: 12),
        child: Row(
          children: [
            Text('Home   >   ',
                style: AppFont()
                    .fontTheme(context, color: colorScheme(context).outline)
                    .bodyMedium),
            Text('Profile   >   ',
                style: AppFont()
                    .fontTheme(context, color: colorScheme(context).outline)
                    .bodyMedium),
            Text('Edit Profile',
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .bodyMedium),
          ],
        ),
      ),
    );
  }
}
