import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/auto_generate_history_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/domain/entities/auto_generate_history_entity.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AIAutoGenHistoryBody extends StatefulWidget {
  const AIAutoGenHistoryBody({super.key});

  @override
  State<AIAutoGenHistoryBody> createState() => _AIAutoGenHistoryBodyState();
}

class _AIAutoGenHistoryBodyState extends State<AIAutoGenHistoryBody> {
  List<AutoGenerateHistoryModel>? histories;

  final ScrollController _scrollController = ScrollController();

  bool _fetch = true;

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMore();
      }
    });
    super.initState();
  }

  void _getMore() {
    if (_fetch) {
      context.read<AiFeaturesBloc>().add(const GetAutoGenerateHistory());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AiFeaturesBloc, AiFeaturesState,
        List<AutoGenerateHistoryModel>?>(
      selector: (state) {
        if (state is GetAutoGenerateHistorySuccess) {
          _handleHistory(state);
        }

        return histories;
      },
      builder: (context, state) {
        if (histories == null) {
          return const MyLoading();
        } else {
          return ListView.builder(
            itemCount: histories!.length,
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
                    child: histories![index].toWidget(context),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }

  void _handleHistory(GetAutoGenerateHistorySuccess state) {
    if (state.autoGenerateHistories.isNotEmpty) {
      if (histories != null) {
        _addHistory(state);
      } else {
        _initHistory(state);
      }
    }
  }

  void _addHistory(GetAutoGenerateHistorySuccess state) {
    if (state.autoGenerateHistories.isEmpty) {
      setState(() {
        _fetch = false;
      });
    } else {
      for (var element in state.autoGenerateHistories) {
        histories!.add(element);
      }
      setState(() {});
    }
  }

  void _initHistory(GetAutoGenerateHistorySuccess state) {
    histories = [];
    for (var element in state.autoGenerateHistories) {
      histories!.add(element);
    }
  }
}
