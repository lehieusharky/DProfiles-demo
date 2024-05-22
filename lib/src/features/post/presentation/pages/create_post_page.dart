import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/post/presentation/bloc/bloc/post_bloc.dart';
import 'package:demo_dprofiles/src/features/post/presentation/widgets/form_create_post.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CreatePostPage extends StatefulWidget {
  final int userID;
  const CreatePostPage({Key? key, required this.userID}) : super(key: key);

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  List<EducationModel>? educations;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector.get<PostBloc>(),
      child: MyScaffold(
        useAppBar: true,
        canBack: true,
        horizontalMargin: 20,
        appBarTitle: appLocal(context).createPost,
        body: SingleChildScrollView(
          child: Column(
            children: [
              FormCreatePost(userID: widget.userID),
            ],
          ),
        ),
      ),
    );
  }
}
