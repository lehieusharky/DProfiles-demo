
import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

@RoutePage()
class LocalAuthPage extends StatefulWidget {
  const LocalAuthPage({super.key});

  @override
  State<LocalAuthPage> createState() => _LocalAuthPageState();
}

class _LocalAuthPageState extends State<LocalAuthPage> {
  final LocalAuthentication auth = LocalAuthentication();


  @override
  void initState() {
    super.initState();
    _authenticate();
  }

  void _authenticate() async {
    bool authenticated = false;

    try {
      authenticated = await auth.authenticate(
        localizedReason: appLocal(context).letOSDetermineAuthMethod,
        options: const AuthenticationOptions(
          stickyAuth: true,
          useErrorDialogs: true,
        ),
      );

      if (authenticated) {
        if (!mounted) {
          return;
        }

        context.router.replace(const DashboardRoute());
      } else {
        _onSignInFailed();
      }
    } on PlatformException catch (e) {
      _onSignInFailed();
      return;
    }
  }

  void _onSignInFailed() async {
    await sharePreference.removeAccessToken();

    if (!mounted) {
      return;
    }
    context.router.replace(const SignInRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Assets.animations.loading.lottie(
          width: context.sizeWidth(200),
          height: context.sizeWidth(200),
        ),
      ),
    );
  }
}
