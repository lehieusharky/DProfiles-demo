import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/auto_generate_history_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/domain/entities/auto_generate_history_entity.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/ai_auto_gen_history/widgets/ai_auto_gen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

@RoutePage()
class AIAutoGenHistoryPage extends StatefulWidget {
  const AIAutoGenHistoryPage({Key? key}) : super(key: key);

  @override
  State<AIAutoGenHistoryPage> createState() => _AIAutoGenHistoryPageState();
}

class _AIAutoGenHistoryPageState extends State<AIAutoGenHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          injector.get<AiFeaturesBloc>()..add(const GetAutoGenerateHistory()),
      child: const MyScaffold(
        useAppBar: true,
        canBack: true,
        horizontalMargin: 20,
        topPadding: 80,
        appBarTitle: 'Auto Generation History',
        body: AIAutoGenHistoryBody(),
      ),
    );
  }
}
