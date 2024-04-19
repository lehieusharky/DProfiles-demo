import 'package:demo_dprofiles/src/core/app_responsive.dart';
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
                const Text(
                  'Select a reason',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              isExpanded: true,
              items: const [
                DropdownMenuItem(
                  value: 'Hate and harassment',
                  child: Text('Hate and harassment'),
                ),
                DropdownMenuItem(
                  value: 'Suicide and Self-harm',
                  child: Text('Suicide and Self-harm'),
                ),
                DropdownMenuItem(
                  value: 'Disordered eating and unhealthy body image',
                  child: Text('Disordered eating and unhealthy body image'),
                ),
                DropdownMenuItem(
                  value: 'Dangerous activities and challenges',
                  child: Text('Dangerous activities and challenges'),
                ),
                DropdownMenuItem(
                  value: 'Nudity and sexual content',
                  child: Text('Nudity and sexual content'),
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
                hintText: 'Select a reason',
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
              title: 'Submit',
            ),
          ],
        ),
      ),
    );
  }
}
