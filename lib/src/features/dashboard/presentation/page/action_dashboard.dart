import 'package:flutter/material.dart';

abstract class ActionDashboard {
  List<Widget> buildActonAppBar();

  Widget buildEndDrawer();

  GlobalKey<ScaffoldState> sKey();
}
