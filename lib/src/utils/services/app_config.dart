import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/utils/di_init/bloc_di_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static Future<void> config() async {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
    );

    // dependencies injection configuration
    await configureCoreDependencies();
    // setup dotenv
    await dotenv.load(fileName: ".env");

    BlocDI.init(injector);
  }
}
