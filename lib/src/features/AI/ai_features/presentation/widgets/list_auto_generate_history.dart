import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/auto_generate_history_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/domain/entities/auto_generate_history_entity.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListAutoGenerateHistory extends StatelessWidget {
  const ListAutoGenerateHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AiFeaturesBloc, AiFeaturesState,
        List<AutoGenerateHistoryModel>>(
      selector: (state) {
        if (state is GetAutoGenerateHistorySuccess) {
          return state.autoGenerateHistories;
        }

        return [];
      },
      builder: (context, state) {
        return Column(
          children: state.map((e) => e.toWidget(context)).toList(),
        );
      },
    );
  }
}
