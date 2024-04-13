import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_divider.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/entities/ext_user_info_entity.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/skill_item.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/sub_profile/about_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/sub_profile/certificate_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/sub_profile/education_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/sub_profile/experience_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/sub_profile/open_to_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubProfilePage extends StatelessWidget {
  final UserInfoModel userInfo;

  const SubProfilePage({Key? key, required this.userInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => injector.get<ProfileBloc>()
        ..add(const ProfileGetUserEducations())
        ..add(const ProfileGetUserCertificates())
        ..add(const ProfileGetUserExperience()),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            OpenToComponent(
              salaryPayType: userInfo.getSalaryPayType(),
              salary: userInfo.salary,
            ),
            const MyDivider(verticalMargin: 8),
            AboutComponent(about: userInfo.summary),
            Padding(
                padding: context.padding(vertical: 8), child: const Divider()),
            const ExperienceComponent(),
            const MyDivider(verticalMargin: 8),
            const TitleSubPage(title: 'Skills', route: OpenToWorkRoute()),
            Padding(
              padding: context.padding(top: 8),
              child: SizedBox(
                height: context.sizeHeight(100),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        SkillItem(title: 'UX/UI'),
                        SkillItem(title: 'Content'),
                        SkillItem(title: 'Google Ads'),
                      ],
                    ),
                    Row(
                      children: [
                        SkillItem(title: 'Marketing'),
                        SkillItem(title: 'Content'),
                        SkillItem(title: 'Content'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const EducationComponent(),
            const MyDivider(verticalMargin: 8),
            const CertificateComponent(),
            const MyDivider(verticalMargin: 8),
            const TitleSubPage(title: 'Language', route: OpenToWorkRoute()),
            Padding(
              padding: context.padding(top: 8),
              child: SizedBox(
                height: context.sizeHeight(100),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        SkillItem(title: 'English'),
                        SkillItem(title: 'Korean'),
                        SkillItem(title: 'Vietnamese'),
                      ],
                    ),
                    Row(
                      children: [
                        SkillItem(title: 'Chinese'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            context.sizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
