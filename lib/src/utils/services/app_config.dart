import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static Future<void> config() async {
    WidgetsFlutterBinding.ensureInitialized();

    // dependencies injection configuration
    await configureCoreDependencies();
    // setup dotenv
    await dotenv.load(fileName: ".env");
  }
}
