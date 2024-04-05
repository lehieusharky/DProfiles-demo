extension IntExt on int {
  String formatTimeWithSecond() {
    int minutes = this ~/ 60;
    int remainingSeconds = this % 60;
    String minutesStr = (minutes < 10) ? '0$minutes' : '$minutes';
    String secondsStr =
        (remainingSeconds < 10) ? '0$remainingSeconds' : '$remainingSeconds';
    return '$minutesStr:$secondsStr';
  }
}
