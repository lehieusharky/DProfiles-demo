import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinPutVerifyEmailCode extends StatefulWidget {
  const PinPutVerifyEmailCode({Key? key}) : super(key: key);

  @override
  State<PinPutVerifyEmailCode> createState() => _PinPutVerifyEmailCodeState();
}

class _PinPutVerifyEmailCodeState extends State<PinPutVerifyEmailCode> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final focusedBorderColor = colorScheme(context).primary;
    final borderColor = colorScheme(context).outlineVariant;

    final defaultPinTheme = PinTheme(
      width: context.sizeWidth(43),
      height: context.sizeHeight(64),
      textStyle: AppFont().fontTheme(context).titleLarge,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: colorScheme(context).outlineVariant.withOpacity(0.2)),
    );

    return Pinput(
      controller: pinController,
      length: 6,
      focusNode: focusNode,
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
      listenForMultipleSmsOnAndroid: true,
      defaultPinTheme: defaultPinTheme,
      separatorBuilder: (index) => SizedBox(width: context.sizeWidth(10)),
      validator: (value) => null,
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      onCompleted: (pin) => context.router.push(const CreateAnAccountRoute()),
      onChanged: (value) {},
      cursor: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 9),
            width: 22,
            height: 1,
          ),
        ],
      ),
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration!.copyWith(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: focusedBorderColor),
          color: Colors.transparent,
        ),
      ),
      submittedPinTheme: defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration!.copyWith(
            color: Colors.transparent,
            border: Border.all(color: colorScheme(context).outlineVariant)),
      ),
      errorPinTheme: defaultPinTheme.copyBorderWith(
        border: Border.all(color: colorScheme(context).error),
      ),
    );
  }
}
