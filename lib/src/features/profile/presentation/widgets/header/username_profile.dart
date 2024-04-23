import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsernameProfile extends StatelessWidget {
  final String username;
  const UsernameProfile({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Expanded(
        child: Text(
          username,
          overflow: TextOverflow.ellipsis,
          style:
              AppFont().fontTheme(context, weight: FontWeight.w600).titleSmall,
        ),
      ),
      IconButton(
        onPressed: () => context.router.push(const EditProfileRoute()).then(
            (value) => context.read<ProfileBloc>().add(const ProfileGetUserInfo())),
        icon: Assets.icons.iconMore.svg(),
      )
    ]);
  }
}
