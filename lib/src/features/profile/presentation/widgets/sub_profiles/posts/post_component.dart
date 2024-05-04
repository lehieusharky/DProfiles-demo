import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
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
          _handlePosts(state);
        }
      },
      builder: (context, state) {
        if (posts == null) {
          return const MyLoading();
        } else {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: posts!.map((e) => e.toWidget(context)).toList(),
          );
        }
      },
    );
  }

  void _handlePosts(ProfileGetUserPostsSuccess state) {
    if (posts != null) {
      _addPost(state);
    } else {
      _initPosts(state);
    }
  }

  void _addPost(ProfileGetUserPostsSuccess state) {
    if (state.posts.isNotEmpty) {
      for (var element in state.posts) {
        posts!.add(element);
      }
      context.read<ProfileBloc>().add(const ProfileGetUserPosts());
      setState(() {});
    }
  }

  void _initPosts(ProfileGetUserPostsSuccess state) {
    posts = [];
    for (var element in state.posts) {
      posts!.add(element);
    }
    context.read<ProfileBloc>().add(const ProfileGetUserPosts());
  }
}
