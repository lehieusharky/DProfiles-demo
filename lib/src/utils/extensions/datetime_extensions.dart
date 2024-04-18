extension DateTimeExt on DateTime {
  String convertToDDMMYYFormat() {
    return '${this.day}/${this.month}/${this.year}';
  }

  String convertToHHMMFormat() {
    return '${this.hour}:${this.minute}';
  }

  String convertToHHMMSSFormat() {
    return '${this.hour}:${this.minute}:${this.second}';
  }

  String convertToHHFormat() {
    return '${this.hour}';
  }

  // Convert to ago format, like 3 minutes ago, 1 hour ago, 1 day ago from now
  String convertToAgoFormat() {
    final now = DateTime.now();
    final difference = now.difference(this);
    if (difference.inDays > 0) {
      return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
    } else {
      return 'Just now';
    }
  }
}
