import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:flutter/material.dart';

import 'my_appbar.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;
  final bool? useAppBar;
  final double? horizontalMargin;
  final String? appBarTitle;
  final List<Widget>? action;
  final Color? backgroundColor;
  final Widget? floatingButton;
  final bool? isBack;
  final Widget? titleWidget;
  final double? topPadding;
  final VoidCallback? onBack;
  final double? heightAppBar;

  const MyScaffold({
    Key? key,
    required this.body,
    this.useAppBar,
    this.horizontalMargin,
    this.appBarTitle,
    this.action,
    this.backgroundColor,
    this.floatingButton,
    this.isBack,
    this.titleWidget,
    this.topPadding,
    this.onBack,
    this.heightAppBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      appBar: useAppBar == true || isBack == true
          ? MyAppbar(
              title: appBarTitle,
              action: action,
              isBack: isBack,
              onBack: onBack,
              height: heightAppBar,
              titleWidget: titleWidget,
            )
          : null,
      body: Padding(
        padding: context.padding(
            top: useAppBar == true ? 0 : topPadding ?? 60,
            horizontal: horizontalMargin ?? 0),
        child: body,
      ),
      floatingActionButton: floatingButton != null
          ? Padding(
              padding: context.padding(bottom: 100, right: 15),
              child: floatingButton,
            )
          : null,
    );
  }
}
