import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/seperate_profile.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/posts/post_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/posts/post_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubPostPage extends StatefulWidget {
  final UserInfoModel userInfo;

  const SubPostPage({Key? key, required this.userInfo}) : super(key: key);

  @override
  State<SubPostPage> createState() => _SubPostPageState();
}

class _SubPostPageState extends State<SubPostPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider<ProfileBloc>(
      create: (context) => injector.get<ProfileBloc>()
        ..add(const ProfileGetUserInfo())
        ..add(const ProfileGetUserPosts()),
      child: const Column(
        children: [
          PostForm(),
          SeparatedProfile(),
          Expanded(child: PostComponent())
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
