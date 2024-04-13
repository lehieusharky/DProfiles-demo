import 'package:flutter/material.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Username'),
                  Text('2 hours ago'),
                  Text(
                      'If you are an entrepreneur, you know that your success cannot depend on the opinions of others.'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
