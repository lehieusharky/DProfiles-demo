import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_cover_letter/presentation/widgets/cover_letter_generation.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_cover_letter/presentation/widgets/form_write_cover_letter.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/header_auto_gen.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/chat_gpt_selector.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class WriteCoverLetterPage extends StatefulWidget {
  const WriteCoverLetterPage({super.key});

  @override
  State<WriteCoverLetterPage> createState() => _WriteCoverLetterPageState();
}

class _WriteCoverLetterPageState extends State<WriteCoverLetterPage>
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
      child: MyScaffold(
        horizontalMargin: 20,
        useAppBar: true,
        canBack: true,
        titleWidget: Assets.icons.logos.dWhitePWhite.svg(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderAutoGenerate(
                aiFeatureTitle: appLocal(context).writeCoverLetter,
              ),
              ChatGPTSelector(controller: _tabController),
              Padding(
                padding: context.padding(vertical: 16),
                child: const FormCoverLetter(),
              ),
              const CoverLetterGeneration(),
            ],
          ),
        ),
      ),
    );
  }
}
