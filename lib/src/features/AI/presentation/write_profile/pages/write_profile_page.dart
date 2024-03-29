import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/presentation/write_profile/pages/ext_write_profile.dart';
import 'package:demo_dprofiles/src/features/AI/presentation/write_profile/widgets/form_write_profile.dart';
import 'package:demo_dprofiles/src/features/AI/presentation/write_profile/widgets/header_write_profile.dart';
import 'package:demo_dprofiles/src/features/AI/presentation/write_profile/widgets/tabbar_write_profile.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WriteProfilePage extends StatefulWidget {
  const WriteProfilePage({super.key});

  @override
  State<WriteProfilePage> createState() => _WriteProfilePageState();
}

class _WriteProfilePageState extends State<WriteProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      horizontalMargin: 20,
      useAppBar: true,
      heightAppBar: 70,
      action: widget.actions(context),
      titleWidget: Assets.icons.logos.dWhitePWhite.svg(),
      body: Column(
        children: [
          const HeaderWriteProfile(),
          TabBarWriteProfile(controller: _tabController),
          Padding(
            padding: context.padding(vertical: 16),
            child: const FormWriteProfile(),
          ),
        ],
      ),
    );
  }
}
