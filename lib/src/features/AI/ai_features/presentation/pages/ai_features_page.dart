part of 'part_ai_features.dart';

class AiFeaturesPage extends StatefulWidget {
  const AiFeaturesPage({Key? key}) : super(key: key);

  @override
  State<AiFeaturesPage> createState() => _AiFeaturesPageState();
}

class _AiFeaturesPageState extends State<AiFeaturesPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) =>
          injector.get<AiFeaturesBloc>()..add(const GetAutoGenerateHistory()),
      child: MyScaffold(
        // useAppBar: true,
        horizontalMargin: 20,
        // action: widget.actions(context),
        // titleWidget: Assets.icons.logos.homeLogo.svg(),
        body: SingleChildScrollView(
          child: Padding(
            padding: context.padding(bottom: 50),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleAiFeatures(),
                HeaderAIFeatures(),
                ViewHistoryTitle(),
                ListAutoGenerateHistory(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
