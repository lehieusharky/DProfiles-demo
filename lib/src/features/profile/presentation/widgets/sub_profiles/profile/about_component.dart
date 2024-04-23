import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AboutComponent extends StatefulWidget {
  const AboutComponent({Key? key}) : super(key: key);

  @override
  State<AboutComponent> createState() => _AboutComponentState();
}

class _AboutComponentState extends State<AboutComponent> {
  UserInfoModel? userInfo;
  bool _showMore = false;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, UserInfoModel?>(
      selector: (state) {
        if (state is ProfileGetUserInfoSuccess) {
          userInfo = state.userInfoModel;
        }
        return userInfo;
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TitleSubPage(
              title: 'About',
              route: const AboutRoute(),
              onCallBack: () =>
                  context.read<ProfileBloc>().add(const ProfileGetUserInfo()),
            ),
            if (userInfo != null)
              Padding(
                padding: context.padding(top: 8),
                child: Text(
                    userInfo!.summary ??
                        "You don't have introduction, Try write something",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    style: AppFont().fontTheme(context).bodyLarge),
              ),
          ],
        );
      },
    );
  }
}
