import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_skill_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/entities/ext_user_skill_entity.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SkillComponent extends StatefulWidget {
  const SkillComponent({Key? key}) : super(key: key);

  @override
  State<SkillComponent> createState() => _SkillComponentState();
}

class _SkillComponentState extends State<SkillComponent> {
  List<UserSkillModel> skills = [];

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, List<UserSkillModel>?>(
      selector: (state) {
        if (state is ProfileGetUserSkillsSuccess) {
          skills = state.skillModels;
        }

        return null;
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TitleSubPage(
              title: 'Skills',
              route: const AddSkillRoute(),
              onCallBack: () =>
                  context.read<ProfileBloc>().add(const ProfileGetUserSkills()),
            ),
            Row(
              children: skills.map((e) => e.toWidget()).toList(),
            )
          ],
        );
      },
    );
  }
}

class SkillItem extends StatelessWidget {
  final String title;

  const SkillItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(right: 8, bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: colorScheme(context).outlineVariant.withOpacity(0.2),
        ),
        padding: context.padding(horizontal: 12, vertical: 8),
        child: Text(
          title,
          style:
              AppFont().fontTheme(context, weight: FontWeight.bold).bodyMedium,
        ),
      ),
    );
  }
}
