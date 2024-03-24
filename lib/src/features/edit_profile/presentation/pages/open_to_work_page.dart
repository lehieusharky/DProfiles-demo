import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/widgets/open_to_work_form.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/widgets/path_direction.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OpenToWorkPage extends StatelessWidget {
  const OpenToWorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      horizontalMargin: 32,
      useAppBar: true,
      action: [
        IconButton(
          onPressed: () {},
          icon: const Icon(IconsaxOutline.search_normal_1),
        ),
        Padding(
          padding: context.padding(right: 5, left: 10),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(IconsaxOutline.notification_bing),
          ),
        ),
        Padding(
          padding: context.padding(horizontal: 5),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(IconsaxOutline.menu_1),
          ),
        ),
      ],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PathDirection(
              currentPage: 'Open to work',
            ),
            Text(
              'Open to work',
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.w700)
                  .labelMedium,
            ),
            const OpenToWorkForm(),
          ],
        ),
      ),
    );
  }
}
