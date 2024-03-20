import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:flutter/material.dart';

class AppConfig {
  static Future<void> config() async {
    WidgetsFlutterBinding.ensureInitialized();

    // dependencies injection configuration
    await configureCoreDependencies();
  }
}
