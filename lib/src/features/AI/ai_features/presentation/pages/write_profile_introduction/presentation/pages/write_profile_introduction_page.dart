import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_profile_introduction/presentation/widgets/form_write_profile.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/header_auto_gen.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/write_profile_introduction/presentation/widgets/profile_introduction_generation.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/chat_gpt_selector.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/list_auto_generate_history.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/view_history_title.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';
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
    extends State<WriteProfileIntroductionPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector.get<AiFeaturesBloc>()
        ..add(const GetCurrentPointOfUser())
        ..add(const GetAutoGenerateHistory()),
      child: BlocListener<AiFeaturesBloc, AiFeaturesState>(
        listener: (context, state) {
          if (state is GenerateProfileIntroductionSuccess) {
            Navigator.pop(context);

            context.read<AiFeaturesBloc>().add(const GetAutoGenerateHistory());

            _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
            );
          }

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
          resizeToAvoidBottomInset: false,
          appBarTitle: 'Write Profile Introduction',
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
              const MySliverAppBar(
                height: 130,
                child: HeaderAutoGenerate(
                    aiFeatureTitle:
                        'Impress the employer with your profile introduction.'),
              ),
            ],
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const ChatGPTSelector(),
                  Padding(
                      padding: context.padding(vertical: 16),
                      child: const FormWriteProfile()),
                  const ProfileIntroductionGeneration(),
                  const ViewHistoryTitle(),
                  const ListAutoGenerateHistory(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
