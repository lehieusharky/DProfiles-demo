import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_cache_image.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/core/ui/my_text_form_field.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostForm extends StatefulWidget {
  const PostForm({super.key});

  @override
  State<PostForm> createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  UserInfoModel? userInfo;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state is ProfileGetUserInfoSuccess) {
          userInfo = state.userInfoModel;
        }
      },
      builder: (context, state) {
        if (userInfo == null) {
          return const MyShimmer(count: 1, height: 50);
        } else {
          return ListTile(
            onTap: () => context.router.push(const CreatePostRoute()),
            leading: _buildAvatar(context),
            title: _buildField(context),
            trailing: const Icon(IconsaxOutline.gallery),
          );
        }
      },
    );
  }

  Widget _buildField(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: colorScheme(context).outlineVariant)),
        padding: context.padding(horizontal: 10, vertical: 10),
        child: Text(
          "What's on your mind, Barton",
          style: AppFont()
              .fontTheme(context, color: colorScheme(context).outline)
              .bodyMedium,
        ));
  }

  Widget _buildAvatar(BuildContext context) {
    return (userInfo!.avatar == null)
        ? Assets.images.home.avatarHolder.image(
            width: context.sizeWidth(40),
            height: context.sizeWidth(40),
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: MyCacheImage(
                width: context.sizeWidth(40),
                height: context.sizeWidth(40),
                imageUrl:
                    'https://d3v3a2vsni37rv.cloudfront.net/${userInfo!.avatar}'));
  }
}
