import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_logo.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/bottom_navigation_text.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/services/connect_wallet_service.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ConnectWalletPage extends StatelessWidget {
  const ConnectWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      horizontalMargin: 16,
      body: Column(
        children: [
          AuthLogo(),
          Assets.images.auth.connectWallet.image(
            fit: BoxFit.cover,
            width: context.sizeWidth(250),
            height: context.sizeHeight(210),
          ),
          Padding(
            padding: context.padding(bottom: 12, top: 28),
            child: Text(
              appLocal(context).connectYourWallet,
              textAlign: TextAlign.center,
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.w700)
                  .headlineMedium,
            ),
          ),
          Padding(
            padding: context.padding(horizontal: 12),
            child: Text(
              appLocal(context).connectWalletDescription,
              textAlign: TextAlign.center,
              style: AppFont()
                  .fontTheme(context, color: colorScheme(context).outline)
                  .bodyLarge,
            ),
          ),
          Padding(
            padding: context.padding(vertical: 28),
            child: MyButton(
              width: context.width,
              onPressed: () async =>
                  AppConnectWalletService().connectWallet(context, ),
              title: appLocal(context).connectWallet,
            ),
          ),
          BottomNavigationText(
              content1: "${appLocal(context).alreadyHaveAnAccount}  ",
              content2: appLocal(context).login,
              onPressed: () => context.router.push(const SignInRoute())),
        ],
      ),
    );
  }
}
