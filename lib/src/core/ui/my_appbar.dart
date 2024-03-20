import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class MyAppbar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppbar({Key? key, this.title, this.action, this.isBack})
      : super(key: key);

  final String? title;
  final List<Widget>? action;
  final bool? isBack;

  @override
  State<MyAppbar> createState() => _MyAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _MyAppbarState extends State<MyAppbar> {
  // CustomScrollView

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: widget.isBack == true
          ? IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(IconsaxOutline.arrow_left_2),
            )
          : null,
      title: widget.title == null ? null : Text(widget.title!),
      actions: widget.action,
    );
  }
}
