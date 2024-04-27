import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/basic_info_dprofile.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/certificate_dprofile.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/education_dprofile.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/experience_dprofile.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/header_my_dprofile.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            const MySliverAppBar(height: 60, child: HeaderMyDprofile()),
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
                const EducationDProfile(),
                const CertificateDProfile(),
                const ExperienceDProfile()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
