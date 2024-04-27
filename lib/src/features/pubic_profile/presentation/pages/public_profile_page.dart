import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/bloc/bloc/public_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/widgets/public_avatar.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/widgets/public_header.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';

@RoutePage()
class PublicProfilePage extends StatelessWidget {
  final String userName;
  const PublicProfilePage({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector.get<PublicProfileBloc>()
        ..add(PublicProfileGetBasicInfo(userName)),
      child: MyScaffold(
        topPadding: 0,
        body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
            const Tuple2(AvatarPublicProfile(), 170),
            const Tuple2(HeaderPublicProfile(), 280),
          ]
                  .map((e) => MySliverAppBar(
                      height: e.item2.toDouble(), child: e.item1))
                  .toList(),
          body: Padding(
            padding: context.padding(horizontal: 20, top: 5),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Still Developing'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
