import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class ViewHistoryTitle extends StatelessWidget {
  const ViewHistoryTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            appLocal(context).viewHistory,
            style: AppFont()
                .fontTheme(context, weight: FontWeight.bold)
                .titleSmall,
          ),
          TextButton(
            onPressed: () {},
            child: Text(appLocal(context).viewAll,
                style: AppFont()
                    .fontTheme(context, color: colorScheme(context).primary)
                    .bodyMedium),
          ),
        ],
      ),
    );
  }
}
