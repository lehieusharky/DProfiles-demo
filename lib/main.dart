import 'package:demo_dprofiles/src/features/my_app/presentation/my_app_page.dart';
import 'package:demo_dprofiles/src/utils/services/app_config.dart';
import 'package:flutter/material.dart';

Future<void> main() async {

  await AppConfig.config();

  runApp(const MyAppPage());
}