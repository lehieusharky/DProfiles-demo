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
      create: (context) => injector.get<AiCharacterBloc>(),
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

            context.replaceRoute(const MyAICharacterRoute());
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
            titleWidget: const Text("Create your AI character "),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  HeaderAICharacter(controller: _tabController),
                  Padding(
                    padding: context.padding(vertical: 32, horizontal: 20),
                    child: SizedBox(
                      height: context.height * 1.2,
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
