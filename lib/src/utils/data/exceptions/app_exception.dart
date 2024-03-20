class AppException implements Exception {
  final Exception exception;

  AppException(this.exception);

  String expCode() {
    return 'exp';
  }
}

class SettingException extends AppException {
  SettingException(super.exception);

  @override
  String expCode() {
    if (exception.toString() == '') {
      return 'speech_setting';
    }

    return 'app_setting';
  }
}

class TextToSpeechException extends AppException {
  TextToSpeechException(super.exception);

  @override
  String expCode() {
    if (exception.toString() == '') {
      return 'speech_setting';
    }

    return 'app_setting';
  }
}
