import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;

class DeviceInfoService {
  DeviceInfoService._internal();

  static final DeviceInfoService _instance = DeviceInfoService._internal();

  factory DeviceInfoService() => _instance;

  bool darkModeIsEnable() {
    final brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;

    bool isDarkMode = brightness == Brightness.dark;

    return isDarkMode;
  }

  bool get isAndroid => !kIsWeb && Platform.isAndroid;
}
