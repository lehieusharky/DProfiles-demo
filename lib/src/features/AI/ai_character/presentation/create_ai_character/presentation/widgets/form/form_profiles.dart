import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';

class FormProfiles extends StatelessWidget {
  const FormProfiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: context.padding(bottom: 24),
          child: Text(
            appLocal(context).addYourProfile,
            style: AppFont()
                .fontTheme(context, weight: FontWeight.bold)
                .labelMedium,
          ),
        ),
        Padding(
          padding: context.padding(bottom: 15),
          child: Text(
            appLocal(context).education,
            style:
                AppFont().fontTheme(context, weight: FontWeight.bold).bodyLarge,
          ),
        ),
        Padding(
          padding: context.padding(bottom: 15, top: 27),
          child: Text(
            appLocal(context).certificates,
            style:
                AppFont().fontTheme(context, weight: FontWeight.bold).bodyLarge,
          ),
        ),
        Padding(
          padding: context.padding(bottom: 15, top: 27),
          child: Text(
            appLocal(context).experiences,
            style:
                AppFont().fontTheme(context, weight: FontWeight.bold).bodyLarge,
          ),
        ),
        Padding(
          padding: context.padding(vertical: 32),
          child: AppFlatButton(context).elevatedButton(
            width: context.width,
            onPressed: () => _continue(context),
            title: appLocal(context).continueButton.toUpperCase(),
          ),
        ),
      ],
    );
  }

  _continue(BuildContext context) {}
}
