import 'package:demo_dprofiles/src/core/ui/my_divider.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';

class SeparatedProfile extends StatelessWidget {
  const SeparatedProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyDivider(
      thickness: 12,
      color: colorScheme(context).outlineVariant.withOpacity(0.2),
    );
  }
}
