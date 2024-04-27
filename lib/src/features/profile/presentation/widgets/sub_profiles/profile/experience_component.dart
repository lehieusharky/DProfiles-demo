import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_experience_model.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExperienceComponent extends StatefulWidget {
  const ExperienceComponent({Key? key}) : super(key: key);

  @override
  State<ExperienceComponent> createState() => _ExperienceComponentState();
}

class _ExperienceComponentState extends State<ExperienceComponent> {
  List<ExperienceModel> experiences = [];

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, List<ExperienceModel>?>(
      selector: (state) {
        if (state is ProfileGetUserExperienceSuccess) {
          experiences = state.experiences;
        }

        if (state is ProfileDeleteExperienceSuccess) {
          context.read<ProfileBloc>().add(const ProfileGetUserExperience());
        }
        return experiences;
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TitleSubPage(
              title: 'Experience',
              route: const ListExperienceRoute(),
              onCallBack: () => context
                  .read<ProfileBloc>()
                  .add(const ProfileGetUserExperience()),
            ),
            if (state == null)
              const MyShimmer(count: 1, height: 150)
            else
              Column(
                mainAxisSize: MainAxisSize.min,
                children: experiences
                    .map((e) => e.toWidget(
                          context,
                          onDelete: () => _deleteExpe(context, e),
                        ))
                    .toList(),
              )
          ],
        );
      },
    );
  }

  void _deleteExpe(BuildContext context, ExperienceModel experience) async {
    await showMyDialog<String?>(context,
        title: const Text('Are you want to delete your experience?'),
        content: const Text('Be careful when click OK'),
        action: [
          TextButton(
            onPressed: () => Navigator.pop(context, 'ok'),
            child: const Text('OK'),
          ),
          AppFlatButton(context).elevatedButton(
              title: 'Cancel',
              onPressed: () => Navigator.pop(context, 'cancel')),
        ]).then((value) {
      if (value == 'ok') {
        context
            .read<ProfileBloc>()
            .add(ProfileDeleteExperience(experience.id!));
      }
    });
  }
}
