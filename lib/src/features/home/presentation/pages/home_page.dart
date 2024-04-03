import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/home/presentation/pages/ext_home_page.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_banner.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_discover.dart';
import 'package:demo_dprofiles/src/features/home/presentation/widgets/home_drawer.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:web3modal_flutter/web3modal_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late W3MService _w3mService;

  @override
  void initState() {
    super.initState();
    initW3MService();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: MyScaffold(
        sKey: _scaffoldKey,
        useAppBar: true,
        endDrawer: const HomeDrawer(),
        action: widget.actions(
          context,
          onAction3Pressed: () => _scaffoldKey.currentState!.openEndDrawer(),
        ),
        titleWidget: Assets.icons.logos.homeLogo.svg(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeBanner(),
              W3MNetworkSelectButton(service: _w3mService),
              W3MConnectWalletButton(service: _w3mService),
              const HomeDiscover(),
            ],
          ),
        ),
      ),
    );
  }

  void initW3MService() async {
    _w3mService = W3MService(
      projectId: 'c215a8fed9aa9f594f5d0c08fd511641',
      metadata: const PairingMetadata(
        name: 'dProfiles App',
        description: "Let's connect with dProfiles",
        url: 'https://www.dprofiles.xyz/',
        icons: [
          'https://www.dprofiles.xyz/_next/static/media/logo.e5ce3f74.svg'
        ],
        redirect: Redirect(
          native: 'https://www.dprofiles.xyz',
          universal: 'https://www.dprofiles.xyz',
        ),
      ),
    );
    await _w3mService.init();
  }
}
