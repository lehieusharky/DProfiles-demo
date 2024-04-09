import 'package:demo_dprofiles/src/features/home/data/models/new_feed_model.dart';
import 'package:demo_dprofiles/src/features/home/domain/entities/ext_new_feed_entity.dart';
import 'package:demo_dprofiles/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsFeedHome extends StatelessWidget {
  const NewsFeedHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, List<NewFeedModel>?>(
      selector: (state) {
        if (state is HomeGetFeedsSuccess) {
          return state.newsFeed;
        }

        return null;
      },
      builder: (context, state) {
        if (state == null) {
          return const Text('Shimmer');
        }
        return ListView.builder(
          itemCount: state.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return state[index].toWidget(context);
          },
        );
      },
    );
  }
}
