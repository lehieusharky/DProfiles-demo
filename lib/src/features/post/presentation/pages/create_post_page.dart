import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CreatePostPage extends StatefulWidget {
  const CreatePostPage({Key? key}) : super(key: key);

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  List<EducationModel>? educations;

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
        useAppBar: true,
        canBack: true,
        horizontalMargin: 20,
        appBarTitle: 'Create post',
        body: Column(
          children: [],
        ));
  }
}
