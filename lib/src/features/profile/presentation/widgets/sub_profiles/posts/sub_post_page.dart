import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/news_feed_home.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/seperate_profile.dart';
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
    return Padding(
      padding: context.padding(top: 20),
      child: Column(
        children: [
          const PostForm(),
          const SeparatedProfile(),
          Expanded(
            child: BlocProvider.value(
              value: injector.get<HomeBloc>(),
              child: const NewsFeedHome(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
