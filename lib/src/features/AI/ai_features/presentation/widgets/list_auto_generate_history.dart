import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/auto_generate_history_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/domain/entities/auto_generate_history_entity.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/empty_auto_gen_history.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ListAutoGenerateHistory extends StatefulWidget {
  const ListAutoGenerateHistory({Key? key}) : super(key: key);

  @override
  State<ListAutoGenerateHistory> createState() =>
      _ListAutoGenerateHistoryState();
}

class _ListAutoGenerateHistoryState extends State<ListAutoGenerateHistory> {
  List<AutoGenerateHistoryModel>? autoGenerateHistories;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AiFeaturesBloc, AiFeaturesState,
        List<AutoGenerateHistoryModel>?>(
      selector: (state) {
        if (state is GetAutoGenerateHistorySuccess) {
          autoGenerateHistories = state.autoGenerateHistories;
        }

        return autoGenerateHistories;
      },
      builder: (context, state) {
        if (autoGenerateHistories == null) {
          return const MyLoading();
        } else if (autoGenerateHistories!.isEmpty) {
          return const EmptyAutoGenHistory();
        }
        return SizedBox(
          height: context.sizeHeight(500),
          child: AnimationLimiter(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: autoGenerateHistories!.length,
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
                      child: autoGenerateHistories![index].toWidget(context),
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
