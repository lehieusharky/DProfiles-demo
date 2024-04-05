import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';

Future<void> showMyDialog(
  BuildContext context, {
  required Widget title,
  required Widget content,
  required List<Widget> action,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: title,
        content: content,
        actions: action,
      );
    },
  );
}

Future<void> showErrorDialog(
  BuildContext context, {
  required String title,
  required String description,
  List<Widget>? action,
  VoidCallback? onPressed,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title, textAlign: TextAlign.center),
        content: Text(
          description,
          textAlign: TextAlign.center,
        ),
        actions: action ??
            [
              AppFlatButton(context).elevatedButton(
                  onPressed: onPressed ?? () => Navigator.pop(context),
                  title: appLocal(context).ok),
            ],
      );
    },
  );
}
