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
  final bool? isPasswordField;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final VoidCallback? onTap;

  const AuthField(
      {Key? key,
      required this.title,
      required this.hint,
      required this.controller,
      this.suffixIcon,
      this.keyboardType,
      this.maxLines,
      this.isPasswordField,
      this.validator,
      this.textInputAction,
      this.onTap})
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
                    weight: FontWeight.bold,
                    color: colorScheme(context).outlineVariant)
                .bodyMedium,
          ),
        ),
        MyTextFormField(
          controller: controller,
          hintText: hint,
          suffixIcon: suffixIcon,
          isPasswordField: isPasswordField,
          onTap: onTap,
          maxLines: maxLines,

          validator: validator,
          textInputAction: textInputAction ?? TextInputAction.done,
          keyboardType: keyboardType ?? TextInputType.text,
        ),
      ],
    );
  }
}
