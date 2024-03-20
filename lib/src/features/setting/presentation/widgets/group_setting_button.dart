import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/setting/presentation/widgets/setting_button.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';

class GroupSettingButton extends StatelessWidget {
  final List<SettingButton> buttons;
  const GroupSettingButton({Key? key, required this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(vertical: 10, horizontal: 5),
      child: Container(
        padding: context.padding(horizontal: 5),
        decoration: BoxDecoration(
            color: colorScheme(context).background,
            borderRadius: BorderRadius.circular(context.sizeWidth(16)),
            boxShadow: [
              BoxShadow(
                color: colorScheme(context).outlineVariant.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: Column(mainAxisSize: MainAxisSize.min, children: buttons),
      ),
    );
  }
}
