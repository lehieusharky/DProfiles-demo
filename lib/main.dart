import 'package:demo_dprofiles/app_bloc_observer.dart';
import 'package:demo_dprofiles/src/features/my_app/presentation/my_app_page.dart';
import 'package:demo_dprofiles/src/utils/services/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await AppConfig.config();
  Bloc.observer = const AppBlocObserver();
  runApp(const MyAppPage());
}
