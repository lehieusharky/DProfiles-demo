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
        ..add(const ProfileGetBanner())
        ..add(const ProfileCheckDigitalProfileAvailable()),
      child: MyScaffold(
        topPadding: 0,
        body: DefaultTabController(
          length: 2,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const AvatarProfile(),
                    const HeaderProfile(),
                    const DProfileComponent(),
                    const SocialMediaComponent(),
                  ],
                ),
              ),
              const SliverFillRemaining(
                hasScrollBody: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TabBarProfile(),
                    Expanded(child: BodyProfile()),
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
}
