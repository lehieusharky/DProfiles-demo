import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension StringExt on String? {
  String? emailValidation(BuildContext context) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    if (this == null || this!.isEmpty) {
      return appLocal(context).emailCannotBeEmpty;
    } else if (!regex.hasMatch(this!)) {
      return appLocal(context).emailInvalidate;
    } else {
      return null;
    }
  }

  String? passwordValidation(BuildContext context) {
    if (this == null || this!.isEmpty) {
      return appLocal(context).passwordCannotBeEmpty;
    } else if (this!.length < 8) {
      return appLocal(context).passwordMustHaveAtLeast8Characters;
    } else {
      return null;
    }
  }

  String? dateTimeFormatValidation(BuildContext context) {
    if (this == null || this!.isEmpty) {
      return appLocal(context).fieldCannotBeEmpty;
    }
    if (!RegExp(r'^\d{2}/\d{2}/\d{4}$').hasMatch(this!)) {
      return appLocal(context).dateTimeformatValidation;
    }
    return null;
  }

  String convertToIOSDateTimeFormat() {
    List<String> parts = this!.split('/');

    String formattedDate = '${parts[2]}-${parts[1]}-${parts[0]}';

    return formattedDate;
  }

  String? convertToDDMMYYYYDateTimeFormat() {
    if (this == null) {
      return null;
    } else {
      String datePart = this!.split('T')[0];
      List<String> parts = datePart.split('-');

      String year = parts[0];
      String month = parts[1];
      String day = parts[2];

      String formattedDate = '$day/$month/$year';

      return formattedDate;
    }
  }

  String? validationForDDMMYYYYY(BuildContext context) {
    RegExp dateRegex = RegExp(r'^\d{2}/\d{2}/\d{4}$');

    if (this == null || this!.isEmpty) {
      return appLocal(context).fieldCannotBeEmpty;
    } else if (!dateRegex.hasMatch(this!)) {
      return null;
    } else {
      return null;
    }
  }

  String convertToDDMMYYFormat() {
    if (this == null || this!.isEmpty) {
      return '';
    } else {
      DateTime dateTime = DateTime.parse(this!);

      DateFormat formatter = DateFormat('HH:mm dd-MMM');

      String formattedDate = formatter.format(dateTime);

      return formattedDate;
    }
  }

  bool isValidEmail() {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    if (this == null || this!.isEmpty) {
      return false;
    } else if (!regex.hasMatch(this!)) {
      return false;
    } else {
      return true;
    }
  }
}
