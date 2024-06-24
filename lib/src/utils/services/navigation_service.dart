import 'package:demo_dprofiles/src/routes/app_route.dart';

class NavigationService {
  NavigationService._internal();

  static final NavigationService _instance = NavigationService._internal();

  factory NavigationService() => _instance;

  AppRouter? _appRoute;

  AppRouter get appRoute => _appRoute ?? AppRouter();

  set appRoute(AppRouter newAppRoute) => _appRoute = newAppRoute;
}
