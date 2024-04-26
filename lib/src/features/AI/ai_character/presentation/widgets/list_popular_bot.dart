import 'dart:developer';

import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/data/models/ai_character_bot_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/domain/entities/ext_ai_character_bot_entity.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_character_bot.dart';

class ListPopularBot extends StatefulWidget {
  const ListPopularBot({Key? key}) : super(key: key);

  @override
  State<ListPopularBot> createState() => _ListPopularBotState();
}

class _ListPopularBotState extends State<ListPopularBot>
    with AutomaticKeepAliveClientMixin {
  List<AICharacterBotModel>? bots = [];

  final ScrollController _scrollController = ScrollController();

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
    context.read<AiCharacterBloc>().add(const GetListPopularCharacterBot());
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<AiCharacterBloc, AiCharacterState>(
      listener: (context, state) {
        if (state is GetListPopularCharacterBotSuccess) {
          _handleBots(state);
        }
      },
      builder: (context, state) {
        if (bots == null) {
          return const MyLoading();
        } else {
          return ListCharacterBot(
            controller: _scrollController,
            children: bots!.map((e) => e.toPopularBot(context, true)).toList(),
          );
        }
      },
    );
  }

  void _handleBots(GetListPopularCharacterBotSuccess state) {
    if (state.bots.isNotEmpty) {
      if (bots != null) {
        _addBot(state);
      } else {
        _nitBots(state);
      }
    }
  }

  void _nitBots(GetListPopularCharacterBotSuccess state) {
    bots = state.bots;
  }

  void _addBot(GetListPopularCharacterBotSuccess state) {
     for (var element in state.bots) {
      bots!.add(element);
    }
  }

  @override
  bool get wantKeepAlive => true;
}
