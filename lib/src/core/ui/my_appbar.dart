import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class MyAppbar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppbar(
      {Key? key, this.title, this.action, this.isBack, this.titleWidget})
      : super(key: key);

  final String? title;
  final List<Widget>? action;
  final bool? isBack;
  final Widget? titleWidget;

  @override
  State<MyAppbar> createState() => _MyAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: widget.isBack == true
          ? IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(IconsaxOutline.arrow_left_2),
            )
          : null,
      title: Padding(
        padding: context.padding(left: 20),
        child: widget.titleWidget ??
            (widget.title == null ? null : Text(widget.title!)),
      ),
      actions: widget.action,
    );
  }
}
