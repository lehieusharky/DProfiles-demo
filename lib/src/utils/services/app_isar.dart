import 'package:isar/isar.dart';

class AppIsar {
  AppIsar._internal();

  static final AppIsar _instance = AppIsar._internal();

  factory AppIsar() => _instance;

  Isar? _isar;
}
