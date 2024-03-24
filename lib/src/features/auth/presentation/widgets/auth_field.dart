import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_text_form_field.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final int? maxLines;

  const AuthField(
      {Key? key,
      required this.title,
      required this.hint,
      required this.controller,
      this.suffixIcon,
      this.keyboardType,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: context.padding(bottom: 10),
          child: Text(
            title,
            style: AppFont()
                .fontTheme(context,
                    weight: FontWeight.w700,
                    color: colorScheme(context).outline)
                .bodySmall,
          ),
        ),
        MyTextFormField(
          controller: controller,
          hintText: hint,
          suffixIcon: suffixIcon,
          maxLines: maxLines,
          keyboardType: keyboardType ?? TextInputType.text,
        ),
      ],
    );
  }
}
