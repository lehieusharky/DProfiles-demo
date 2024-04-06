import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/pages/ext_ai_features_page.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/ai_feature_header.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/list_auto_generate_history.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/widgets/view_history_title.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AiFeaturesPage extends StatefulWidget {
  const AiFeaturesPage({Key? key}) : super(key: key);

  @override
  State<AiFeaturesPage> createState() => _AiFeaturesPageState();
}

class _AiFeaturesPageState extends State<AiFeaturesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AiFeaturesBloc(context),
      child: MyScaffold(
        useAppBar: true,
        horizontalMargin: 20,
        action: widget.actions(context),
        titleWidget: Assets.icons.logos.homeLogo.svg(),
        body: SingleChildScrollView(
          child: Padding(
            padding: context.padding(bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: context.padding(bottom: 24),
                  child: Text(appLocal(context).aiFeatures,
                      style: AppFont()
                          .fontTheme(context, weight: FontWeight.bold)
                          .titleSmall),
                ),
                const AiFeatureHeader(),
                const ViewHistoryTitle(),
                const ListAutoGenerateHistory(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
