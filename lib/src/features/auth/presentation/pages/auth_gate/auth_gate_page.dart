import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/pages/sign_in/page/sign_in_page.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/page/dashboard_page.dart';
import 'package:demo_dprofiles/src/features/onboarding/presentation/page/onboarding_page.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthGatePage extends StatelessWidget {
  AuthGatePage({Key? key}) : super(key: key);

  final bool _isFirstTimeOpenApp = sharePreference.isFirstTimeOpenApp();

  final String? _accessToken = sharePreference.getAccessToken();

  @override
  Widget build(BuildContext context) {
    if (_isFirstTimeOpenApp == true) {
      return const OnboardingPage();
    } else if (_accessToken == null) {
      return const SignInPage();
    } else {
      return const DashboardPage();
    }
  }
}
