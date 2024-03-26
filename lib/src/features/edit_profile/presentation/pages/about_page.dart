import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/widgets/path_direction.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final _aboutController = TextEditingController(
      text:
          "Professional Product Management in Fintech/Crypto/Web3.0/Social Network/Ecommerce, lead product team at every stages of a product's lifecycle from ideation to product market fit.");

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
            const PathDirection(currentPage: 'About'),
            Text(
              'About',
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.w700)
                  .labelMedium,
            ),
            Padding(
              padding: context.padding(top: 32),
              child: AuthField(
                title: 'ABOUT',
                hint: '',
                maxLines: 7,
                keyboardType: TextInputType.multiline,
                controller: _aboutController,
              ),
            ),
            Padding(
              padding: context.padding(top: 24, bottom: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: AppOutlineButton(context).elevatedButton(
                      onPressed: () {},
                      title: 'Cancel',
                    ),
                  ),
                  context.sizedBox(width: 16),
                  Expanded(
                    child: MyButton(
                      onPressed: () {},
                      title: 'Save',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
