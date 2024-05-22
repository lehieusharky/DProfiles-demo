import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_skill_knowledge/presentation/widgets/skill_knowledge_generation.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/header_auto_gen.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_skill_knowledge/presentation/widgets/form_skill_knowledge.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/chat_gpt_selector.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class WriteSkillKnowledgePage extends StatefulWidget {
  const WriteSkillKnowledgePage({super.key});

  @override
  State<WriteSkillKnowledgePage> createState() =>
      _WriteSkillKnowledgePageState();
}

class _WriteSkillKnowledgePageState extends State<WriteSkillKnowledgePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          injector.get<AiFeaturesBloc>()..add(const GetCurrentPointOfUser()),
      child: BlocListener<AiFeaturesBloc, AiFeaturesState>(
        listener: (context, state) {
          if (state is GenerateSkillKnowledgeSuccess) {
            Navigator.pop(context);
          }
          if (state is AiFeaturesError) {
            Navigator.pop(context);
            showErrorDialog(context,
                title: appLocal(context).generateFailed, description: state.message);
          }
        },
        child: MyScaffold(
          horizontalMargin: 20,
          useAppBar: true,
          canBack: true,
          appBarTitle: appLocal(context).skillsKnowledgeByJobTitle,
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
                MySliverAppBar(
                height: 130,
                child: HeaderAutoGenerate(
                  aiFeatureTitle: appLocal(context).improveYourSkillWithAITools,
                ),
              ),
            ],
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const ChatGPTSelector(),
                  Padding(
                    padding: context.padding(vertical: 16),
                    child: const FormSkillKnowledge(),
                  ),
                  const SkillKnowledgeGeneration(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
