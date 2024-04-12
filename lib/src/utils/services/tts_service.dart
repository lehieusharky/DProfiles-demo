import 'package:flutter_tts/flutter_tts.dart';

class TtsService {
  TtsService._internal();

  FlutterTts? _tts;

  FlutterTts get tts => _setUpTts();

  static final TtsService _instance = TtsService._internal();

  factory TtsService() => _instance;

  FlutterTts _setUpTts() {
    if (_tts == null) {
      _tts = FlutterTts();

      _configTts();
    }

    return _tts ?? FlutterTts();
  }

  void _configTts() async {
    await _tts?.setLanguage("en-US");

    await _tts?.setSpeechRate(0.6);

    await _tts?.setVolume(1.0);

    await _tts?.setPitch(1.0);

    await _tts?.isLanguageAvailable("en-US");
  }
}
