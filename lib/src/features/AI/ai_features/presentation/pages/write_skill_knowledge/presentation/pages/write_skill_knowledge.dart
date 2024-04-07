import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/write_interview_question/presentation/widgets/form_write_profile.dart';
import 'package:demo_dprofiles/src/features/AI/write_interview_question/presentation/widgets/header_write_profile.dart';
import 'package:demo_dprofiles/src/features/AI/write_interview_question/presentation/widgets/interview_question_result.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/chat_gpt_selector.dart';
import 'package:demo_dprofiles/src/features/AI/write_skill_knowledge/presentation/widgets/form_skill_knowledge.dart';
import 'package:demo_dprofiles/src/features/AI/write_skill_knowledge/presentation/widgets/header_skill_knowledge.dart';
import 'package:demo_dprofiles/src/features/AI/write_skill_knowledge/presentation/widgets/skill_knowledge_result.dart';
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
      create: (context) => AiFeaturesBloc(context),
      child: MyScaffold(
        horizontalMargin: 20,
        useAppBar: true,
        canBack: true,
        titleWidget: Assets.icons.logos.dWhitePWhite.svg(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderSkillKnowledge(),
              ChatGPTSelector(controller: _tabController),
              Padding(
                padding: context.padding(vertical: 16),
                child: const FormSkillKnowledge(),
              ),
              const SkillKnowledgeResult(),
            ],
          ),
        ),
      ),
    );
  }
}
