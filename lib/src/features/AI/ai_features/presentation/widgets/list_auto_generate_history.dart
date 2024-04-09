import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/auto_generate_history_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/domain/entities/auto_generate_history_entity.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ListAutoGenerateHistory extends StatelessWidget {
  const ListAutoGenerateHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AiFeaturesBloc, AiFeaturesState,
        List<AutoGenerateHistoryModel>?>(
      selector: (state) {
        if (state is GetAutoGenerateHistorySuccess) {
          if (state.autoGenerateHistories.length > 3) {
            return state.autoGenerateHistories.sublist(0, 3);
          } else {
            return state.autoGenerateHistories;
          }
        }

        return null;
      },
      builder: (context, state) {
        if (state == null) {
          return Center(
            child: Assets.animations.loading.lottie(
              width: context.sizeWidth(200),
              height: context.sizeWidth(200),
            ),
          );
        } else if (state.isEmpty) {
          return const Center(
            child: Text(
              '\n Image for empty history case\nList is empty',
              textAlign: TextAlign.center,
            ),
          );
        }
        return SizedBox(
          height: context.sizeHeight(500),
          child: AnimationLimiter(
            child: ListView.builder(
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
            ),
          ),
        );
      },
    );
  }
}
