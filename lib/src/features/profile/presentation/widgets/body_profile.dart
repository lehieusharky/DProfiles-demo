import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/posts/sub_post_page.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/profile/sub_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyProfile extends StatelessWidget {
  const BodyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, UserInfoModel?>(
      selector: (state) {
        if (state is ProfileGetUserInfoSuccess) {
          return state.userInfoModel;
        }

        return null;
      },
      builder: (context, state) {
        if (state == null) {
          return const MyLoading();
        } else {
          return TabBarView(
            children: [
              SubProfilePage(userInfo: state),
              SubPostPage(userInfo: state),
            ],
          );
        }
      },
    );
  }
}
