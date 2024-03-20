import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/onboarding', page: OnboardingRoute.page),
        AutoRoute(path: '/dashboard', page: DashboardRoute.page),
        AutoRoute(path: '/connect_wallet', page: ConnectWalletRoute.page),
        AutoRoute(path: '/sign_in', initial: true, page: SignInRoute.page),
        AutoRoute(path: '/sign_up', page: SignUpRoute.page),
      ];
}
