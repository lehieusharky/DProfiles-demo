import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';

class FormAddCharacter extends StatelessWidget {
  const FormAddCharacter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: context.padding(bottom: 24),
          child: Text(
            appLocal(context).addYourCharacter,
            style: AppFont()
                .fontTheme(context, weight: FontWeight.bold)
                .labelMedium,
          ),
        ),
        Spacer(),
        Padding(
          padding: context.padding(vertical: 32),
          child: AppFlatButton(context).elevatedButton(
            width: context.width,
            onPressed: () => _save(context),
            title: appLocal(context).save.toUpperCase(),
          ),
        ),
      ],
    );
  }

  _save(BuildContext context) {}
}
