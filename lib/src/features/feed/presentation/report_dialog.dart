import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class ReportDialog extends StatelessWidget {
  ReportDialog({super.key, this.onPressed});
  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  appLocal(context).selectAReason,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              isExpanded: true,
              items:  [
                DropdownMenuItem(
                  value: appLocal(context).hateAndHarassment,
                  child: Text(appLocal(context).hateAndHarassment),
                ),
                DropdownMenuItem(
                  value: appLocal(context).suicideAndSelfHarm,
                  child: Text(appLocal(context).suicideAndSelfHarm),
                ),
                DropdownMenuItem(
                  value: appLocal(context).disorderedEatingAndUnhealthyBodyImage,
                  child: Text(appLocal(context).disorderedEatingAndUnhealthyBodyImage),
                ),
                DropdownMenuItem(
                  value: appLocal(context).dangerousActivitiesAndChallenges,
                  child: Text(appLocal(context).dangerousActivitiesAndChallenges),
                ),
                DropdownMenuItem(
                  value: appLocal(context).nudityAndSexualContent,
                  child: Text(appLocal(context).nudityAndSexualContent),
                ),
              ],
              onChanged: (value) {
                // Handle dropdown selection
              },
              decoration: InputDecoration(
                // labelText: 'Select a reason',
                labelStyle: AppFont().fontTheme(context).bodyLarge,
                contentPadding: EdgeInsets.symmetric(
                    vertical: context.sizeHeight(10),
                    horizontal: context.sizeWidth(10)),
                focusColor: Theme.of(context).colorScheme.primary,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(context.sizeWidth(12)),
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(context.sizeWidth(12)),
                  borderSide:
                      BorderSide(color: colorScheme(context).primary, width: 1),
                ),
                prefixIconColor: MaterialStateColor.resolveWith((states) =>
                    states.contains(MaterialState.focused)
                        ? colorScheme(context).primary
                        : colorScheme(context).outline),
                suffixIconColor: MaterialStateColor.resolveWith((states) =>
                    states.contains(MaterialState.focused)
                        ? colorScheme(context).primary
                        : colorScheme(context).outline),
                fillColor: Colors.transparent,
                filled: true,
                hintText: appLocal(context).selectAReason,
                errorStyle: AppFont().fontTheme(context).bodyMedium,
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(context.sizeWidth(12)),
                  borderSide:
                      BorderSide(color: colorScheme(context).error, width: 0.5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(context.sizeWidth(12)),
                  borderSide: BorderSide(
                      color: colorScheme(context).primary, width: 0.5),
                ),
                hintStyle: AppFont()
                    .fontTheme(context, color: colorScheme(context).outline)
                    .bodyLarge,
              ),
            ),
            SizedBox(height: 16.0),
            MyButton(
              mainAxisSize: MainAxisSize.max,
              onPressed: () {
                Navigator.of(context).pop();
                onPressed?.call();
              },
              title: appLocal(context).submit,
            ),
          ],
        ),
      ),
    );
  }
}
