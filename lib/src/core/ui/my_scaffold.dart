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
  final bool? canBack;
  final Widget? titleWidget;
  final double? topPadding;
  final VoidCallback? onBack;
  final double? heightAppBar;
  final bool? isLoading;
  final Widget? endDrawer;
  final GlobalKey<ScaffoldState>? sKey;

  const MyScaffold({
    Key? key,
    required this.body,
    this.useAppBar,
    this.horizontalMargin,
    this.appBarTitle,
    this.action,
    this.backgroundColor,
    this.floatingButton,
    this.canBack,
    this.titleWidget,
    this.topPadding,
    this.onBack,
    this.heightAppBar,
    this.isLoading,
    this.endDrawer,
    this.sKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: sKey,
      resizeToAvoidBottomInset: true,
      backgroundColor: backgroundColor,
      endDrawer: endDrawer,
      appBar: useAppBar == true || canBack == true
          ? MyAppbar(
              title: appBarTitle,
              action: action,
              isBack: canBack,
              onBack: onBack,
              height: heightAppBar,
              titleWidget: titleWidget,
            )
          : null,
      body: Padding(
        padding: context.padding(
            top: useAppBar == true ? 0 : topPadding ?? 80,
            bottom: 20,
            horizontal: horizontalMargin ?? 0),
        child: Stack(
          children: [
            if (isLoading == true)
              const Center(
                child: CircularProgressIndicator(),
              ),
            body,
          ],
        ),
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
