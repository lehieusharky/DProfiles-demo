import 'package:flutter/material.dart';

class FeedMenuItem extends StatelessWidget {
  FeedMenuItem({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: TextButton.icon(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
          ),
          icon: const Icon(Icons.arrow_back),
          label: Text(title),
        ));
  }
}
