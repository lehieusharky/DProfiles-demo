import 'package:auto_route/auto_route.dart';
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
  List<ExperienceModel>? experiences;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state is ProfileGetUserExperienceSuccess) {
          experiences = [];
          for (var element in state.experiences) {
            experiences?.add(element);
          }
        }

        if (state is ProfileDeleteExperienceSuccess) {
          experiences?.removeWhere((element) => element.id == state.id);
        }
        if (state is ProfileUpdateUserExperienceSuccess) {
          final itemWillbeRemove = experiences
              ?.firstWhere((element) => element.id == state.experienceModel.id);
          if (itemWillbeRemove != null) {
            final position = experiences?.indexOf(itemWillbeRemove);
            if (position != null) {
              experiences?.removeAt(position);

              experiences?.insert(position, state.experienceModel);
            }
          }
        }
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
            if (experiences == null)
              Container()
            else
              Column(
                mainAxisSize: MainAxisSize.min,
                children: experiences!
                    .map((e) => e.toWidget(
                          context,
                          // onDelete: () => _deleteExpe(context, e),
                          // onUpdate: () => _updateExp(context, e),
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
            onPressed: () => Navigator.pop(context, 'cancel'),
          ),
        ]).then((value) {
      if (value == 'ok') {
        context
            .read<ProfileBloc>()
            .add(ProfileDeleteExperience(experience.id!));
      }
    });
  }

  void _updateExp(BuildContext context, ExperienceModel experienceModel) {
    context.router
        .push(FormEditExperienceRoute(experienceModel: experienceModel))
        .then((value) => value == null
            ? null
            : _onUpdate(context, value as ExperienceModel));
  }

  void _onUpdate(BuildContext context, ExperienceModel experienceModel) =>
      context
          .read<ProfileBloc>()
          .add(ProfileUpdateUserExperience(experienceModel));
}
