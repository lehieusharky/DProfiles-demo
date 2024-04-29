import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';

class BasicInfoOfDigitalProfile extends StatefulWidget {
  const BasicInfoOfDigitalProfile({super.key});

  @override
  State<BasicInfoOfDigitalProfile> createState() =>
      _BasicInfoOfDigitalProfileState();
}

class _BasicInfoOfDigitalProfileState extends State<BasicInfoOfDigitalProfile> {
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
          return const MyShimmer(count: 1, height: 100);
        }
        return Padding(
          padding: context.padding(top: 8, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Basic Information',
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.w600)
                    .titleSmall,
              ),
              Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Tuple2('Name', userInfo!.username),
                    Tuple2('DOB', userInfo!.birthDay),
                    Tuple2('Nationality', userInfo!.nationality),
                    Tuple2('ID Card Number', userInfo!.idCardNumber),
                  ]
                      .map(
                        (e) => Padding(
                          padding: context.padding(bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                e.item1,
                                style: AppFont()
                                    .fontTheme(context,
                                        weight: FontWeight.w600,
                                        color: colorScheme(context).outline)
                                    .bodyMedium,
                              ),
                              Text(
                                e.item2 ?? '',
                                style: AppFont()
                                    .fontTheme(context,
                                        color: colorScheme(context).outline)
                                    .bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList()),
            ],
          ),
        );
      },
    );
  }
}
