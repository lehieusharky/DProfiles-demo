import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class EmptyAutoGenHistory extends StatelessWidget {
  const EmptyAutoGenHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(4),
        padding: const EdgeInsets.all(6),
        dashPattern: const [10, 5],
        color: colorScheme(context).primary,
        child: Container(
          width: context.width,
          height: context.sizeHeight(135),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "History is empty",
                textAlign: TextAlign.center,
                style: AppFont()
                    .fontTheme(
                  context,
                  weight: FontWeight.bold,
                  color: colorScheme(context).primary,
                )
                    .labelSmall,
              ),
              Padding(
                padding: context.padding(top: 2, bottom: 10),
                child: Text(
                  "Try to discover DProfile's AI tools",
                  textAlign: TextAlign.center,
                  style: AppFont()
                      .fontTheme(
                    context,
                    color: colorScheme(context).outline,
                  )
                      .bodyMedium,
                ),
              ),
              AppFlatButton(context).elevatedButton(
                  width: context.width / 2,
                  title: 'Try now',
                  onPressed: () => context.router
                      .push(const WriteProfileIntroductionRoute()))
            ],
          ),
        ),
      ),
    );
  }
}
