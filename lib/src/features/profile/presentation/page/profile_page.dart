part of 'import_profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => injector.get<ProfileBloc>()
        ..add(const ProfileGetUserInfo())
        ..add(const ProfileCheckDigitalProfileAvailable()),
      child: MyScaffold(
        topPadding: 0,
        body: DefaultTabController(
          length: 2, 
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
              const Tuple2(AvatarProfile(), 170),
              const Tuple2(HeaderProfile(), 260),
              const Tuple2(SeparatedProfile(), 2),
              const Tuple2(DProfileComponent(), 88),
              const Tuple2(SeparatedProfile(), 12),
              const Tuple2(SocialMediaComponent(), 88),
              const Tuple2(SeparatedProfile(), 12),
            ]
                    .map((e) => MySliverAppBar(
                        height: e.item2.toDouble(), child: e.item1))
                    .toList(),
            body: Padding(
              padding: context.padding(horizontal: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TabBarProfile(),
                  Expanded(child: BodyProfile()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
