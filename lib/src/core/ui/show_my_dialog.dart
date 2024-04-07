import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
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
    barrierDismissible: true,
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
    barrierDismissible: true,
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

Future<void> showLoadingDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Center(
        child: Container(
          decoration: BoxDecoration(
              color: colorScheme(context).background,
              borderRadius: BorderRadius.circular(32)),
          padding: context.padding(all: 5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.animations.loading.lottie(
                width: context.sizeWidth(200),
                height: context.sizeWidth(200),
              ),
              Padding(
                padding: context.padding(horizontal: 10, bottom: 5),
                child: AppFlatButton(context).elevatedButton(
                  backgroundColor: colorScheme(context).error,
                  title: 'Cancel',
                  titleColor: MyColor.getWhite,
                  onPressed: () => Navigator.pop(context),
                  width: context.sizeWidth(200),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
