import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  final bool isLastPage;
  const SkipButton({Key? key, required this.isLastPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.sizeHeight(50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (!isLastPage)
            TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)))),
              onPressed: () {},
              child: Text(
                'SKIP',
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.w600)
                    .bodyMedium,
              ),
            )
        ],
      ),
    );
  }
}
