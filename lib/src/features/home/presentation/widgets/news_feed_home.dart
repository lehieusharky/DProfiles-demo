import 'package:demo_dprofiles/src/core/ui/my_divider.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/home/data/models/new_feed_model.dart';
import 'package:demo_dprofiles/src/features/home/domain/entities/ext_new_feed_entity.dart';
import 'package:demo_dprofiles/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class NewsFeedHome extends StatefulWidget {
  const NewsFeedHome({super.key});

  @override
  State<NewsFeedHome> createState() => _NewsFeedHomeState();
}

class _NewsFeedHomeState extends State<NewsFeedHome>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocSelector<HomeBloc, HomeState, List<NewFeedModel>?>(
      selector: (state) {
        if (state is HomeGetFeedsSuccess) {
          return state.newsFeed;
        }

        return null;
      },
      builder: (context, state) {
        if (state == null) {
          return const MyShimmer(count: 4, height: 200);
        }

        return _buildBody(state);
      },
    );
  }

  Widget _buildBody(List<NewFeedModel> state) {
    return AnimationLimiter(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: state.length,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            delay: const Duration(milliseconds: 100),
            child: SlideAnimation(
              duration: const Duration(milliseconds: 2500),
              curve: Curves.fastLinearToSlowEaseIn,
              child: FadeInAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(milliseconds: 2500),
                child: state[index].toWidget(context),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => MyDivider(
          thickness: 10,
          color: colorScheme(context).outlineVariant.withOpacity(0.3),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
