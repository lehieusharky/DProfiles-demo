import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/auto_generate_history_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/domain/entities/auto_generate_history_entity.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

@RoutePage()
class AiFeaturesHistoryPage extends StatelessWidget {
  const AiFeaturesHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          injector.get<AiFeaturesBloc>()..add(const GetAutoGenerateHistory()),
      child: BlocSelector<AiFeaturesBloc, AiFeaturesState,
          List<AutoGenerateHistoryModel>?>(
        selector: (state) {
          if (state is GetAutoGenerateHistorySuccess) {
            return state.autoGenerateHistories;
          }

          return null;
        },
        builder: (context, state) {
          return MyScaffold(
            useAppBar: true,
            canBack: true,
            horizontalMargin: 20,
            topPadding: 80,
            appBarTitle: 'Auto Generation History',
            body: (state == null)
                ? Center(
                    child: Assets.animations.loading.lottie(
                      width: context.sizeWidth(200),
                      height: context.sizeWidth(200),
                    ),
                  )
                : SingleChildScrollView(
                    child: SizedBox(
                      height: context.height,
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
                    ),
                  ),
          );
        },
      ),
    );
  }
}