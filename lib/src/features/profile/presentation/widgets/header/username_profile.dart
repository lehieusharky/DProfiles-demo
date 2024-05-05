import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameProfile extends StatefulWidget {
  const NameProfile({Key? key}) : super(key: key);

  @override
  State<NameProfile> createState() => _NameProfileState();
}

class _NameProfileState extends State<NameProfile> {
  UserInfoModel? userInfo;

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
        if (userInfo == null) {
          return Container();
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: _buildName()),
              IconButton(
                onPressed: () => _editBasicInfo(context),
                icon: Assets.icons.iconMore.svg(),
              )
            ],
          );
        }
      },
    );
  }

  Widget _buildName() {
    String name = '';

    if (userInfo?.lastName != null || userInfo?.firstName != null) {
      name = "${userInfo!.lastName} ${userInfo!.firstName}";
    }

    if (name.isEmpty) {
      name = 'Your Name';
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          overflow: TextOverflow.ellipsis,
          style:
              AppFont().fontTheme(context, weight: FontWeight.w600).titleSmall,
        ),
        Text(
          "@${userInfo?.username}",
          overflow: TextOverflow.ellipsis,
          style:
              AppFont().fontTheme(context, weight: FontWeight.w400).bodyMedium,
        ),
      ],
    );
  }

  void _editBasicInfo(BuildContext context) {
    context.router.push(const EditProfileRoute()).then(
        (value) => context.read<ProfileBloc>().add(const ProfileGetUserInfo()));
  }
}
