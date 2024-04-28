import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_experience_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExperienceDProfile extends StatefulWidget {
  const ExperienceDProfile({Key? key}) : super(key: key);

  @override
  State<ExperienceDProfile> createState() => _ExperienceDProfileState();
}

class _ExperienceDProfileState extends State<ExperienceDProfile> {
  List<ExperienceModel> experiences = [];

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, List<ExperienceModel>?>(
      selector: (state) {
        if (state is ProfileGetUserExperienceSuccess) {
          experiences = state.experiences;
        }
        return experiences;
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            context.sizedBox(height: 10),
            const TitleSubPage(title: 'Experience', canEdit: false),
            context.sizedBox(height: 5),
            if (state == null)
              const MyShimmer(count: 1, height: 150)
            else
              Column(
                mainAxisSize: MainAxisSize.min,
                children: experiences.map((e) => e.toWidget(context)).toList(),
              )
          ],
        );
      },
    );
  }
}