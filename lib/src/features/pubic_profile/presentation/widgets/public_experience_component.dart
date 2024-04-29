import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/bloc/public_profile_bloc.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_experience_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublicExperienceComponent extends StatefulWidget {
  const PublicExperienceComponent({Key? key}) : super(key: key);

  @override
  State<PublicExperienceComponent> createState() =>
      _PublicExperienceComponentState();
}

class _PublicExperienceComponentState extends State<PublicExperienceComponent> {
  List<ExperienceModel> experiences = [];

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PublicProfileBloc, PublicProfileState,
        List<ExperienceModel>?>(
      selector: (state) {
        if (state is PublicProfileGetUserExperienceSuccess) {
          experiences = state.experiences;
        }

        return experiences;
      },
      builder: (context, state) {
        return Padding(
          padding: context.padding(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TitleSubPage(title: 'Experience', canEdit: false),
              context.sizedBox(height: 5),
              if (state == null)
                const MyShimmer(count: 1, height: 150)
              else
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                      experiences.map((e) => e.toWidget(context)).toList(),
                )
            ],
          ),
        );
      },
    );
  }
}
