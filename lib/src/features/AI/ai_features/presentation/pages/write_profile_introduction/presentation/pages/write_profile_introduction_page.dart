import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/presentation/pages/ext_write_profile.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/presentation/widgets/form_write_profile.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/presentation/widgets/header_write_profile.dart';
import 'package:demo_dprofiles/src/features/AI/write_profile_introduction/presentation/widgets/profile_introduction_result.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/chat_gpt_selector.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class WriteProfileIntroductionPage extends StatefulWidget {
  const WriteProfileIntroductionPage({super.key});

  @override
  State<WriteProfileIntroductionPage> createState() =>
      _WriteProfileIntroductionPageState();
}

class _WriteProfileIntroductionPageState
    extends State<WriteProfileIntroductionPage>
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
        action: widget.actions(context),
        titleWidget: Assets.icons.logos.dWhitePWhite.svg(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWriteProfile(),
              ChatGPTSelector(controller: _tabController),
              Padding(
                padding: context.padding(vertical: 16),
                child: const FormWriteProfile(),
              ),
              const ProfileIntroductionResult(),
            ],
          ),
        ),
      ),
    );
  }
}
