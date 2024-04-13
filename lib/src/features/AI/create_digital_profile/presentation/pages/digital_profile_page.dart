import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DigitalProfilePage extends StatelessWidget {
  const DigitalProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
      useAppBar: true,
      canBack: true,
      body: Column(
        children: [],
      ),
    );
  }
}
