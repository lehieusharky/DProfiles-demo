import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';

class AiCharacterPage extends StatelessWidget {
  const AiCharacterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      useAppBar: true,
      body: Column(
        children: [
          Center(
            child: AppFlatButton(context).elevatedButton(
                title: 'Create DProfile',
                onPressed: () =>
                    context.router.push(const CreateAiCharacterRoute())),
          ),
        ],
      ),
    );
  }
}
