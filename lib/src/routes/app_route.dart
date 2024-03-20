import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: '/onboarding', initial: true, page: OnboardingRoute.page),
        AutoRoute(path: '/dashboard', page: DashboardRoute.page),
        AutoRoute(path: '/sign_in', page: SignInRoute.page),
        AutoRoute(path: '/sign_up', page: SignUpRoute.page),
      ];
}
