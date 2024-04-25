import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/avatar_profile.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/body_profile.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/dprofile_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/header/header_profile.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/seperate_profile.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/social_media_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/tab_bar_profile.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';

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
              const Tuple2(SeparatedProfile(), 12),
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
