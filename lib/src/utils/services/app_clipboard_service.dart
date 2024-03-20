import 'package:flutter/services.dart';

class AppClipboardService {
  AppClipboardService._internal();

  static final AppClipboardService _instance = AppClipboardService._internal();

  factory AppClipboardService() => _instance;

  Future<String> pasteTextFromClipboard() async {
    ClipboardData? clipboardData =
        await Clipboard.getData(Clipboard.kTextPlain);

    final condition = (clipboardData != null && clipboardData.text != null);

    return condition ? clipboardData.text! : '';
  }

  Future<void> copyTextToClipboard(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
  }
}
