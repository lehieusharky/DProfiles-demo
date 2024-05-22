import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/feed/presentation/feed_menu_item.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

import 'report_dialog.dart';

class FeedMenu extends StatefulWidget {
  const FeedMenu({super.key});

  @override
  State<FeedMenu> createState() => _FeedMenuState();
}

class _FeedMenuState extends State<FeedMenu> {
  final menuController = MenuController();

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      controller: menuController,
      style: MenuStyle(
        shape: MaterialStateProperty.resolveWith(
          (states) =>
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.focused)) {
            return Theme.of(context).colorScheme.primary.withOpacity(0.5);
          }
          return Colors.white;
        }),
      ),
      menuChildren: [
        FeedMenuItem(
          title: appLocal(context).report,
          onPressed: () {
            menuController.close();
            _openReportDialog(context);
          },
        ),
      ],
      alignmentOffset: const Offset(10, -30),
      builder: (context, controller, _) => InkWell(
        onTap: () => controller.open(),
        splashFactory: NoSplash.splashFactory,
        child: Padding(
          padding: context.padding(vertical: 10, left: 10),
          child: Assets.icons.iconMore.svg(),
        ),
      ),
    );
  }

  _openReportDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return ReportDialog(
          onPressed: () {
            // TODO: Implement report logic
          },
        );
      },
    );
  }
}
