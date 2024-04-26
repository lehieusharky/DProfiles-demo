import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/profile/certificate_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/profile/education_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/profile/experience_component.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuple/tuple.dart';

@RoutePage()
class MyDigitalProfilePage extends StatelessWidget {
  const MyDigitalProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector.get<ProfileBloc>()
        ..add(const ProfileGetUserInfo())
        ..add(const ProfileGetUserCertificates())
        ..add(const ProfileGetUserExperience())
        ..add(const ProfileGetUserEducations()),
      child: MyScaffold(
        useAppBar: true,
        canBack: true,
        horizontalMargin: 20,
        body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
            MySliverAppBar(
              height: 60,
              child: Padding(
                padding: context.padding(bottom: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Digital Profile',
                      style: AppFont()
                          .fontTheme(context, weight: FontWeight.w600)
                          .titleSmall,
                    ),
                  ],
                ),
              ),
            ),
          ],
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Basic Information',
                  style: AppFont()
                      .fontTheme(context, weight: FontWeight.w600)
                      .titleSmall,
                ),
                const BasicInfoOfDigitalProfile(),
                context.sizedBox(height: 8),
                const EducationComponent(),
                const CertificateComponent(),
                const ExperienceComponent()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
          padding: context.padding(top: 8),
          child: Column(
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
        );
      },
    );
  }
}
