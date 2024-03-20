import 'package:demo_dprofiles/src/core/ui/my_bottom_sheet.dart';
import 'package:demo_dprofiles/src/utils/constant/support_theme.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter/material.dart';

Future<T?> onToggleThemeBottomSheet<T>({
  required BuildContext context,
}) {
  return showMyBottomSheet(
      context: context,
      child: SizedBox(
        height: 200,
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: SupportedTheme.values
                  .map((updatedTheme) => ListTile(
                      leading: Icon(updatedTheme.toIcon()),
                      title: Text(updatedTheme.toTitle(context)),
                      trailing: sharePreference.getTheme() == updatedTheme
                          ? Icon(Icons.check_circle,
                              color: Theme.of(context).colorScheme.primary)
                          : null,
                      onTap: () => Navigator.pop(context, updatedTheme)))
                  .toList()),
        ),
      ));
}
