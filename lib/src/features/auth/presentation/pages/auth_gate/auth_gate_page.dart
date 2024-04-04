import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/features/dashboard/presentation/page/dashboard_page.dart';
import 'package:demo_dprofiles/src/features/onboarding/presentation/page/onboarding_page.dart';
import 'package:demo_dprofiles/src/utils/data/cache/app_share_preference.dart';
import 'package:flutter/material.dart';
import 'package:web3modal_flutter/pages/connect_wallet_page.dart';

@RoutePage()
class AuthGatePage extends StatelessWidget {
  AuthGatePage({Key? key}) : super(key: key);

  final bool _isFirstTimeOpenApp = sharePreference.isFirstTimeOpenApp();

  final String? _accessToken = sharePreference.getAccessToken();

  @override
  Widget build(BuildContext context) {
    return const OnboardingPage();
    if (_isFirstTimeOpenApp == true) {

    } else if (_accessToken == null) {
      return const ConnectWalletPage();
    } else {
      return const DashboardPage();
    }
  }
}
