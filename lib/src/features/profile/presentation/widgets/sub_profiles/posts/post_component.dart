import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/post/data/models/post_model.dart';
import 'package:demo_dprofiles/src/features/post/domain/entities/ext_post_entity.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostComponent extends StatefulWidget {
  const PostComponent({Key? key}) : super(key: key);

  @override
  State<PostComponent> createState() => _PostComponentState();
}

class _PostComponentState extends State<PostComponent> {
  List<PostModel>? posts;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state is ProfileGetUserPostsSuccess) {
          posts = state.posts;
        }
      },
      builder: (context, state) {
        if (posts == null) {
          return const MyShimmer(count: 3, height: 300);
        } else {
          return SingleChildScrollView(
            child: Column( 
              mainAxisSize: MainAxisSize.min,
              children: posts!.map((e) => e.toWidget(context)).toList(),
            ),
          );
        }
      },
    );
  }
}
