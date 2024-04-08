import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/utils/di_init/bloc_di_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppConfig {
  static Future<void> config() async {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
    );

    // dependencies injection configuration
    await configureCoreDependencies();

    BlocDI.init(injector);
  }
}
