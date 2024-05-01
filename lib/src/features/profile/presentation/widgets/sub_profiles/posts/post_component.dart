import 'dart:developer';

import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
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

  bool _fetch = true;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMore();
      }
    });
    super.initState();
  }

  void _getMore() {
    if (_fetch) {
      context.read<ProfileBloc>().add(const ProfileGetUserPosts());
    }
  }

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
          return SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: posts!.map((e) => e.toWidget(context)).toList(),
            ),
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
    log(state.posts.toString());
    if (state.posts.isEmpty) {
      setState(() {
        _fetch = false;
      });
    } else {
      for (var element in state.posts) {
        posts!.add(element);
      }
      setState(() {});
    }
  }

  void _initPosts(ProfileGetUserPostsSuccess state) {
    posts = [];
    for (var element in state.posts) {
      posts!.add(element);
    }
  }
}
