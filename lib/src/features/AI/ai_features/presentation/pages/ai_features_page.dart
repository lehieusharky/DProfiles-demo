part of 'part_ai_features.dart';

class AiFeaturesPage extends StatefulWidget {
  const AiFeaturesPage({Key? key}) : super(key: key);

  @override
  State<AiFeaturesPage> createState() => _AiFeaturesPageState();
}

class _AiFeaturesPageState extends State<AiFeaturesPage>
    with AutomaticKeepAliveClientMixin
    implements ActionDashboard {
  final _skey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => injector.get<AiFeaturesBloc>(),
      child: MyScaffold(
        sKey: _skey,
        topPadding: 20,
        horizontalMargin: 20,
        useAppBar: true,
        canBack: false,
        titleWidget: const MyIconApp(),
        action: buildActonAppBar(),
        endDrawer: buildEndDrawer(),
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleAiFeatures(),
              HeaderAIFeatures(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget buildEndDrawer() {
    return const DashboardEndDrawer(
      key: Key('ai features page'),
    );
  }

  @override
  List<Widget> buildActonAppBar() {
    return actionAppbar(context, _skey);
  }

  @override
  GlobalKey<ScaffoldState> sKey() => _skey;
}
