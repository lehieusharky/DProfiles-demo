import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/data/models/public_user_info_model.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/bloc/public_profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NamePublicProfile extends StatefulWidget {
  const NamePublicProfile({Key? key}) : super(key: key);

  @override
  State<NamePublicProfile> createState() => _NamePublicProfileState();
}

class _NamePublicProfileState extends State<NamePublicProfile> {
  PublicUserInfoModel? userInfo;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PublicProfileBloc, PublicProfileState,
        PublicUserInfoModel?>(
      selector: (state) {
        if (state is PublicProfileGetBasicInfoSuccess) {
          userInfo = state.userInfo;
        }

        return userInfo;
      },
      builder: (context, state) {
        if (userInfo == null) {
          return Container();
        } else {
          return _buildName();
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
      name =  appLocal(context).yourName;
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
}
