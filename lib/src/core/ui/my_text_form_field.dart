import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final bool? autoFocus;
  final FocusNode? focusNode;
  final int? maxLines;
  final int? minLines;
  final TextInputType? keyboardType;
  final AutovalidateMode? autoValidateMode;
  final void Function(String)? onChanged;
  final String? hintText;
  final double? borderRadius;
  final TextStyle? textStyle;
  final double? height;
  final Color? backgroundColor;
  final Color? focusBorderColor;
  final Color? defaultBorderColor;
  final void Function()? onTap;
  final void Function()? onEditComplete;
  final void Function(String)? onSubmit;
  final bool? isPasswordField;
  final String? labelText;

  const MyTextFormField({
    super.key,
    this.controller,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.borderRadius,
    this.textStyle,
    this.maxLines,
    this.height,
    this.keyboardType,
    this.autoValidateMode,
    this.hintText,
    this.onChanged,
    this.focusNode,
    this.autoFocus,
    this.textInputAction,
    this.backgroundColor,
    this.focusBorderColor,
    this.defaultBorderColor,
    this.onTap,
    this.onEditComplete,
    this.onSubmit,
    this.isPasswordField,
    this.labelText,
    this.minLines,
  });

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();

  factory MyTextFormField.multipleLine({
    String? hintText,
    TextEditingController? controller,
    void Function(String)? onChanged,
    Color? backgroundColor,
    String? labelText,
    int? maxLines,
    int? minLines,
  }) {
    return MyTextFormField(
      controller: controller,
      keyboardType: TextInputType.multiline,
      hintText: hintText,
      maxLines: maxLines,
      minLines: minLines,
      onChanged: onChanged,
      backgroundColor: backgroundColor,
      labelText: labelText,
    );
  }
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  bool _obscuteText = false;

  @override
  initState() {
    super.initState();
    if (widget.isPasswordField == true) {
      _obscuteText = true;
    }
  }

  _onChangeVisibility() {
    setState(() {
      _obscuteText = !_obscuteText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      maxLines: widget.maxLines ?? 1,
      focusNode: widget.focusNode,
      obscureText: _obscuteText,
      onTapOutside: (value) => FocusManager.instance.primaryFocus!.unfocus(),
      autofocus: widget.autoFocus ?? false,
      onTap: widget.onTap,
      onFieldSubmitted: widget.onSubmit,
      validator: widget.validator,
      onEditingComplete: widget.onEditComplete,
      textInputAction: widget.textInputAction,
      style: AppFont().fontTheme(context).labelSmall,
      autovalidateMode: widget.autoValidateMode,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      minLines: widget.minLines,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: AppFont().fontTheme(context).bodyLarge,
        contentPadding: EdgeInsets.symmetric(
            vertical: context.sizeHeight(10),
            horizontal: context.sizeWidth(10)),
        focusColor: Theme.of(context).colorScheme.primary,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              widget.borderRadius ?? context.sizeWidth(12)),
          borderSide: BorderSide(
              color: widget.defaultBorderColor ??
                  Theme.of(context).colorScheme.outlineVariant,
              width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              widget.borderRadius ?? context.sizeWidth(12)),
          borderSide: BorderSide(color: colorScheme(context).primary, width: 1),
        ),
        prefixIcon: widget.prefixIcon,
        prefixIconColor: MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.focused)
                ? colorScheme(context).primary
                : colorScheme(context).outline),
        suffixIconColor: MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.focused)
                ? colorScheme(context).primary
                : colorScheme(context).outline),
        suffixIcon: (widget.isPasswordField == true)
            ? IconButton(
                onPressed: () => _onChangeVisibility(),
                icon: Icon(
                  _obscuteText ? IconsaxOutline.eye : IconsaxOutline.eye_slash,
                ))
            : widget.suffixIcon,
        fillColor: widget.backgroundColor ?? Colors.transparent,
        filled: true,
        hintText: widget.hintText,
        errorStyle: AppFont().fontTheme(context).bodyMedium,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              widget.borderRadius ?? context.sizeWidth(12)),
          borderSide: BorderSide(color: colorScheme(context).error, width: 0.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              widget.borderRadius ?? context.sizeWidth(12)),
          borderSide:
              BorderSide(color: colorScheme(context).primary, width: 0.5),
        ),
        hintStyle: AppFont()
            .fontTheme(context, color: colorScheme(context).outline)
            .bodyLarge,
      ),
    );
  }
}
