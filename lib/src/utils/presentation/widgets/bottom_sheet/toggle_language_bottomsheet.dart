import 'package:demo_dprofiles/src/core/ui/my_bottom_sheet.dart';
import 'package:demo_dprofiles/src/utils/constant/supported_language.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter/material.dart';

Future<T?> onToggleLanguageBottomSheet<T>({
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
            children: SupportedLanguage.values
                .map((updatedLanguage) => ListTile(
                      leading: Icon(updatedLanguage.toIcon()),
                      title: Text(updatedLanguage.toTitle()),
                      trailing: sharePreference.getLanguage() == updatedLanguage
                          ? Icon(Icons.check_circle,
                              color: Theme.of(context).colorScheme.primary)
                          : null,
                      onTap: () => Navigator.pop(context, updatedLanguage),
                    ))
                .toList()),
      ),
    ),
  );
}
