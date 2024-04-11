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
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class WriteSkillKnowledgePage extends StatefulWidget {
  const WriteSkillKnowledgePage({super.key});

  @override
  State<WriteSkillKnowledgePage> createState() =>
      _WriteSkillKnowledgePageState();
}

class _WriteSkillKnowledgePageState extends State<WriteSkillKnowledgePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector.get<AiFeaturesBloc>(),
      child: BlocListener<AiFeaturesBloc, AiFeaturesState>(
        listener: (context, state) {
          if (state is AiFeaturesError) {
            Navigator.pop(context);
            showErrorDialog(context,
                title: 'Generate failed', description: state.message);
          }
        },
        child: MyScaffold(
          horizontalMargin: 20,
          useAppBar: true,
          canBack: true,
          titleWidget: Assets.icons.logos.dWhitePWhite.svg(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                HeaderAutoGenerate(
                  aiFeatureTitle: appLocal(context).skillsKnowledgeByJobTitle,
                ),
                ChatGPTSelector(controller: _tabController),
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
    );
  }
}
