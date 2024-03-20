import 'package:flutter/material.dart';

Future<T?> showMyBottomSheet<T>({
  required BuildContext context,
  required Widget child,
}) {
  return showModalBottomSheet<T>(
    context: context,
    builder: (BuildContext context) => child,
  );
}
