import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_education_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EducationComponent extends StatefulWidget {
  const EducationComponent({Key? key}) : super(key: key);

  @override
  State<EducationComponent> createState() => _EducationComponentState();
}

class _EducationComponentState extends State<EducationComponent> {
  List<EducationModel> educations = [];

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, List<EducationModel>?>(
      selector: (state) {
        if (state is ProfileGetUserEducationsSuccess) {
          educations = state.educations;
        }
        return educations;
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            context.sizedBox(height: 10),
            const TitleSubPage(title: 'Education', canEdit: false),
            context.sizedBox(height: 5),
            if (state == null)
              const MyShimmer(count: 1, height: 150)
            else
              Column(
                mainAxisSize: MainAxisSize.min,
                children: educations.map((e) => e.toWidget(context)).toList(),
              )
          ],
        );
      },
    );
  }
}
