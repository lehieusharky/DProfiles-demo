import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AboutComponent extends StatelessWidget {
  final String? about;
  const AboutComponent({Key? key, this.about}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TitleSubPage(
          title: 'About',
          route: const AboutRoute(),
          onCallBack: () =>
              context.read<ProfileBloc>().add(const ProfileGetUserInfo()),
        ),
        Padding(
          padding: context.padding(top: 8),
          child: Text(
              about ?? "You don't have introduction, Try write something",
              style: AppFont().fontTheme(context).bodyLarge),
        ),
      ],
    );
  }
}
