import 'dart:developer';

import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:demo_dprofiles/src/utils/https/my_response/upload_file_response.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AvatarProfile extends StatefulWidget {
  const AvatarProfile({super.key});

  @override
  State<AvatarProfile> createState() => _AvatarProfileState();
}

class _AvatarProfileState extends State<AvatarProfile> {
  UserInfoModel? userInfo;
  UploadFileResponse? ploadFileResponse;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(listener: (context, state) {
      if (state is ProfileUploadAvatarSuccess) {
        ploadFileResponse = state.uploadImageResponse;

        final updateUser =
            userInfo!.copyWith(avatar: ploadFileResponse!.objectKey);

        context.read<ProfileBloc>().add(ProfileUpdateUserInfo(updateUser));
      }

      if (state is ProfileGetUserInfoSuccess) {
        userInfo = state.userInfoModel;
      }

      if (state is ProfileUpdateUserInfoSuccess) {
        context.read<ProfileBloc>().add(const ProfileGetUserInfo());

        showErrorDialog(
          context,
          title: 'Upload success',
          description: 'Update avatar success',
        );
      }
    }, builder: (context, state) {
      if (userInfo == null) {
        return const MyShimmer(count: 1, height: 200);
      } else {
        return Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Assets.images.profile.profileBackground.image(),
                    _buildBackgroundAction(context),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
            Padding(
              padding: context.padding(horizontal: 20),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  _buildAvatar(context),
                  _buildEditWidget(context),
                ],
              ),
            ),
          ],
        );
      }
    });
  }

  Widget _buildAvatar(BuildContext context) {
    return InkWell(
      onTap: () => context.read<ProfileBloc>().add(const ProfileUploadAvatar()),
      child: Container(
          padding: context.padding(all: 1.5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorScheme(context).background,
          ),
          child: (userInfo!.avatar == null)
              ? Assets.images.home.avatarHolder.image(
                  width: context.sizeWidth(96),
                  height: context.sizeWidth(96),
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: MyCacheImage(
                      width: context.sizeWidth(96),
                      height: context.sizeWidth(96),
                      imageUrl:
                          'https://d3v3a2vsni37rv.cloudfront.net/${userInfo!.avatar}'))),
    );
  }

  Widget _buildEditWidget(BuildContext context) {
    return InkWell(
      onTap: () => context.read<ProfileBloc>().add(const ProfileUploadAvatar()),
      child: Container(
        padding: context.padding(all: 1),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorScheme(context).background,
        ),
        child: Container(
          padding: context.padding(all: 8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorScheme(context).primary,
          ),
          child: Assets.icons.iconEdit.svg(
            width: context.sizeWidth(18),
            colorFilter:
                const ColorFilter.mode(MyColor.getWhite, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }

  Widget _buildUploadWidget(BuildContext context) {
    return Container(
      padding: context.padding(all: 10),
      margin: context.padding(top: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: colorScheme(context).background,
      ),
      child: Assets.icons.iconUpload.svg(),
    );
  }

  Widget _buildBackgroundAction(BuildContext context) {
    return Padding(
      padding: context.padding(horizontal: 20, top: 40),
      child: _buildUploadWidget(context),
    );
  }
}
