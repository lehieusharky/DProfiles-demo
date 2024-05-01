part of 'import_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin
    implements ActionDashboard {
  final _skey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => injector.get<HomeBloc>()..add(const HomeGetFeeds()),
      child: MyScaffold(
        sKey: _skey,
        topPadding: 20,
        useAppBar: true,
        canBack: false,
        titleWidget: const MyIconApp(),
        action: buildActonAppBar(),
        endDrawer: buildEndDrawer(),
        body: DefaultTabController(
          length: 2,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [const HomeBanner()],
                ),
              ),
              const SliverFillRemaining(
                hasScrollBody: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TitleHome(title: 'Discover'),
                    TabBarHome(),
                    Expanded(child: HomeDiscover()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    injector.get<HomeBloc>().close();
    super.dispose();
  }

  @override
  Widget buildEndDrawer() {
    return const DashboardEndDrawer();
  }

  @override
  List<Widget> buildActonAppBar() {
    return actionAppbar(context, _skey);
  }

  @override
  GlobalKey<ScaffoldState> sKey() => _skey;
}
