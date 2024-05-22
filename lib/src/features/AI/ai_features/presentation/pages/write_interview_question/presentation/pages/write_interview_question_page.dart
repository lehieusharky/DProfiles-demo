import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_interview_question/presentation/widgets/form_write_profile.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_interview_question/presentation/widgets/interview_question_generation.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/header_auto_gen.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/chat_gpt_selector.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class WriteInterviewQuestionPage extends StatefulWidget {
  const WriteInterviewQuestionPage({super.key});

  @override
  State<WriteInterviewQuestionPage> createState() =>
      _WriteInterviewQuestionPageState();
}

class _WriteInterviewQuestionPageState
    extends State<WriteInterviewQuestionPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          injector.get<AiFeaturesBloc>()..add(const GetCurrentPointOfUser()),
      child: BlocListener<AiFeaturesBloc, AiFeaturesState>(
        listener: (context, state) {
          if (state is GenerateInterviewQuestionSuccess) {
            Navigator.pop(context);
          }
        },
        child: MyScaffold(
          horizontalMargin: 20,
          useAppBar: true,
          canBack: true,
          resizeToAvoidBottomInset: false,
          appBarTitle: appLocal(context).writeInterviewQuestion,
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
                MySliverAppBar(
                height: 130,
                child: HeaderAutoGenerate(
                    aiFeatureTitle:
                        appLocal(context).weWillHelpYouAnswerInterViewQuestion),
              ),
            ],
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const ChatGPTSelector(),
                  Padding(
                    padding: context.padding(vertical: 16),
                    child: const FormWriteInterviewQuestion(),
                  ),
                  const InterviewQuestionGeneration(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
