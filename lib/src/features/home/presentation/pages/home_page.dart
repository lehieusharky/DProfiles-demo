import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
      useAppBar: true,
      appBarTitle: 'Text to speech',
      body: Column(
        children: [
          Text('dfdf'),
        ],
      ),
    );
  }
}
