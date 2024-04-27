part of 'import_my_ai_character_page.dart';

@RoutePage()
class MyAICharacterPage extends StatefulWidget {
  final int chatBotID;
  final bool isPopularBot;

  const MyAICharacterPage({
    super.key,
    required this.chatBotID,
    required this.isPopularBot,
  });

  @override
  State<MyAICharacterPage> createState() => _MyAICharacterPageState();
}

class _MyAICharacterPageState extends State<MyAICharacterPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => injector.get<MyAiCharacterBloc>()
          ..add(MyAiCharacterGetChatBotDetail(
              widget.chatBotID, widget.isPopularBot))
          ..add(MyAiCharacterGetChatWithBotHistory(
              chatBotID: widget.chatBotID, page: 1, limit: 10, search: '')),
        child: DefaultTabController(
          length: 2,
          child: MyScaffold(
            useAppBar: true,
            canBack: true,
            onBack: () {
              while (context.router.canPop()) {
                Navigator.pop(context);
              }
            },
            appBarTitle: appLocal(context).myAiCharacter,
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) => [
                MySliverAppBar(
                  height: context.height * 0.9,
                  child: HeaderMyAICharacter(
                    isPopularBot: widget.isPopularBot,
                  ),
                ),
              ],
              body: Padding(
                padding: context.padding(horizontal: 20, top: 20, bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildViewHistoryTitle(),
                    const TabBarChatHistoryMyAiCharacter(),
                    Expanded(
                        child: ViewHistoryMyCharacterBot(
                            chatBotID: widget.chatBotID)),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Widget _buildViewHistoryTitle() {
    return Text(
      'View Chat History',
      style: AppFont().fontTheme(context, weight: FontWeight.w600).titleSmall,
    );
  }
}
