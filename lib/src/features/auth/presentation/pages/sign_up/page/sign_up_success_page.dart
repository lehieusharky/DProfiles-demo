import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      horizontalMargin: 32,
      topPadding: 80,
      body: Column(
        children: [
          Padding(
            padding: context.padding(top: 180),
            child: Center(child: Assets.images.auth.signUpSuccess.image()),
          ),
          Padding(
            padding: context.padding(vertical: 28),
            child: Text(
              'You successfully signed up!\nWelcome to dProfiles',
              textAlign: TextAlign.center,
              style: AppFont()
                  .fontTheme(context,
                      weight: FontWeight.bold,
                      color: colorScheme(context).onBackground)
                  .bodyLarge,
            ),
          ),
          AppFlatButton(context).elevatedButton(
            width: context.width,
            onPressed: () => context.router.push(const SignInRoute()),
            title: 'Get started!',
          ),
        ],
      ),
    );
  }
}
