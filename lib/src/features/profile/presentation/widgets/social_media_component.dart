import 'dart:developer';

import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuple/tuple.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaComponent extends StatelessWidget {
  const SocialMediaComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, UserInfoModel?>(
      selector: (state) {
        if (state is ProfileGetUserInfoSuccess) {
          return state.userInfoModel;
        }

        return null;
      },
      builder: (context, state) => Padding(
        padding: context.padding(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Social Media',
              style: AppFont()
                  .fontTheme(context, weight: FontWeight.bold)
                  .bodyLarge,
            ),
            if (state != null)
              Row(
                children: [
                  Tuple2(Assets.icons.socialInstagram.path, state.instagramUrl),
                  Tuple2(Assets.icons.socialX.path, state.twitterUrl),
                  Tuple2(Assets.icons.socialTelegram.path, state.telegramUrl),
                  Tuple2(Assets.icons.socialWhatapp.path, state.whatsappUrl),
                  Tuple2(Assets.icons.socialLinkedin.path, state.linkedinUrl)
                ]
                    .map(
                      (e) => Padding(
                        padding: context.padding(horizontal: 5),
                        child: InkWell(
                          onTap:
                              e.item2 != null ? () => _openUrl(e.item2!) : null,
                          child: SvgPicture.asset(e.item1),
                        ),
                      ),
                    )
                    .toList(),
              )
          ],
        ),
      ),
    );
  }

  Future<void> _openUrl(String uri) async {
    try {
      final Uri url = Uri.parse(uri);

      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
