import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/news_feed_home.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubPostPage extends StatelessWidget {
  final UserInfoModel userInfo;

  const SubPostPage({Key? key, required this.userInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(top: 20),
      child: BlocProvider.value(
        value: injector.get<HomeBloc>(),
        child: const NewsFeedHome(),
      ),
    );
  }
}
