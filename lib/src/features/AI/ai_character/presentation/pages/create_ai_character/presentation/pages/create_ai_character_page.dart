import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/create_ai_character/presentation/widgets/form/form_add_character.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/create_ai_character/presentation/widgets/form/form_basic_info.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/create_ai_character/presentation/widgets/form/form_profiles.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/create_ai_character/presentation/widgets/form/form_training_ai.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/pages/create_ai_character/presentation/widgets/header_ai_character.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CreateAiCharacterPage extends StatefulWidget {
  const CreateAiCharacterPage({super.key});

  @override
  State<CreateAiCharacterPage> createState() => _CreateAiCharacterPageState();
}

class _CreateAiCharacterPageState extends State<CreateAiCharacterPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector.get<AiCharacterBloc>()
        ..add(const AICharacterChangeCreationStep(isNext: true))
        ..add(const AICharacterGetUserCertificates())
        ..add(const AICharacterGetUserEducations())
        ..add(const AICharacterGetUserExperiences()),
      child: BlocListener<AiCharacterBloc, AiCharacterState>(
        listener: (context, state) {
          if (state is AICharacterChangeCreationStepSuccess) {
            _tabController.animateTo((state.currentStep - 1),
                duration: const Duration(milliseconds: 300));
          }

          if (state is AddBasicInfoOfCharacterBotSuccess) {
            context
                .read<AiCharacterBloc>()
                .add(const AICharacterChangeCreationStep(isNext: true));
          }

          if (state is AICharacterLoading) {
            showLoadingDialog(context);
          }

          if (state is GenerateCharacterBotSuccess) {
            Navigator.pop(context);

            context.read<AiCharacterBloc>().add(
                AICharacterFollowBot(state.createCharacterBotModel.chatBotId!));

            context.replaceRoute(MyAICharacterRoute(
                chatBotID: state.createCharacterBotModel.chatBotId!,
                isPopularBot: false));
          }

          if (state is AICharacterError) {
            Navigator.pop(context);
            showErrorDialog(context,
                title: 'Generate failed', description: state.message[0]);
          }
        },
        child: DefaultTabController(
          length: 3,
          child: MyScaffold(
            useAppBar: true,
            canBack: true,
            titleWidget: const Text("Create your AI character"),
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) => [
                MySliverAppBar(
                    height: 205,
                    child: HeaderAICharacter(controller: _tabController)),
              ],
              body: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: context.padding(horizontal: 20, top: 32),
                      child: TabBarView(
                        controller: _tabController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: const [
                          FormBasicInfo(),
                          FormProfiles(),
                          FormAddCharacter(),
                          FormTrainingAi(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
