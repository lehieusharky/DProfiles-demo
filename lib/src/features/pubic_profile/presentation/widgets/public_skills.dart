import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/profile/skill_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/data/models/public_skill_model.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/bloc/public_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublicSkillsComponent extends StatefulWidget {
  const PublicSkillsComponent({Key? key}) : super(key: key);

  @override
  State<PublicSkillsComponent> createState() => _PublicSkillsComponentState();
}

class _PublicSkillsComponentState extends State<PublicSkillsComponent> {
  List<PublicSkillModel>? skills;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PublicProfileBloc, PublicProfileState,
        List<PublicSkillModel>?>(
      selector: (state) {
        if (state is PublicProfileGetSkillsSuccess) {
          skills = state.skills;
        }

        return skills;
      },
      builder: (context, state) {
        return Padding(
          padding: context.padding(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TitleSubPage(title: 'Skills', canEdit: false),
              context.sizedBox(height: 5),
              if (skills == null)
                 Container()
              else
                Wrap(
                  spacing: 1,
                  runSpacing: 1,
                  children: List.generate(
                      skills!.length,
                      (index) =>
                          SkillItem(title: skills![index].skill!.name ?? '')),
                )
            ],
          ),
        );
      },
    );
  }
}
