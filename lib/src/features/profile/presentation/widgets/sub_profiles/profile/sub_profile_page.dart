import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_divider.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/entities/ext_user_info_entity.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'about_component.dart';
import 'certificate_component.dart';
import 'education_component.dart';
import 'experience_component.dart';
import 'language_component.dart';
import 'open_to_component.dart';
import 'skill_component.dart';

class SubProfilePage extends StatelessWidget {
  final UserInfoModel userInfo;

  const SubProfilePage({Key? key, required this.userInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) => injector.get<ProfileBloc>()
          ..add(const ProfileGetUserInfo())
          ..add(const ProfileGetUserEducations())
          ..add(const ProfileGetUserCertificates())
          ..add(const ProfileGetUserExperience())
          ..add(const ProfileGetUserSkills())
          ..add(const ProfileGetUserLanguages()),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const OpenToComponent(),
              const MyDivider(verticalMargin: 8),
              const AboutComponent(),
              const MyDivider(verticalMargin: 8),
              const SkillComponent(),
              const MyDivider(verticalMargin: 8),
              const LanguageComponent(),
              const MyDivider(verticalMargin: 8),
              const ExperienceComponent(),
              const MyDivider(verticalMargin: 8),
              const EducationComponent(),
              const MyDivider(verticalMargin: 8),
              const CertificateComponent(),
              context.sizedBox(height: 50),
            ],
          ),
        ));
  }
}
