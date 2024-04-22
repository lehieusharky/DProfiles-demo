import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/auto_generate_history_model.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/auto_generate_text_to_speech.dart';
import 'package:demo_dprofiles/src/utils/constant/ai_features_type.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AutoGenerationHistoryDetailPage extends StatelessWidget {
  final AiFeatureTypes type;
  final int id;
  const AutoGenerationHistoryDetailPage(
      {Key? key, required this.type, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          injector.get<AiFeaturesBloc>()..add(GetAutoGenerateHistoryDetail(id)),
      child: BlocSelector<AiFeaturesBloc, AiFeaturesState,
          AutoGenerateHistoryModel?>(
        selector: (state) {
          if (state is GetAutoGenerateHistoryDetailSuccess) {
            return state.autoGenerateHistoryDetail;
          }
          return null;
        },
        builder: (context, state) {
          return MyScaffold(
            useAppBar: true,
            canBack: true,
            appBarTitle: type.getTitle(context),
            body: state == null
                ? MyShimmer(count: 5, height: context.height)
                : Padding(
                    padding: context.padding(horizontal: 20, top: 20),
                    child: SingleChildScrollView(
                      child: AutoGenerateTextToSpeech(
                        textGenerated: state.result,
                        createAt: DateTime.now().toString(),
                      ),
                    ),
                  ),
          );
        },
      ),
    );
  }
}
