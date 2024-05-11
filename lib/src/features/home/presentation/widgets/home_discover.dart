import 'package:demo_dprofiles/src/features/blogs/blogs.dart';
import 'package:demo_dprofiles/src/features/home/presentation/cubit/tab_bar_cubit.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/news_feed_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDiscover extends StatelessWidget {
  const HomeDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBarCubit, TabBarState>(
      builder: (context, state) {
        return IndexedStack(
          index: state.index,
          children: const [
            NewsFeedHome(),
            BlogListPage(),

          ],
        );
      },
    );
  }
}
