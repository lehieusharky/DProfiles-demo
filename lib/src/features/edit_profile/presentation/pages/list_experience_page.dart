import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_experience_model.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ListExperiencePage extends StatefulWidget {
  const ListExperiencePage({Key? key}) : super(key: key);

  @override
  State<ListExperiencePage> createState() => _ListExperiencePageState();
}

class _ListExperiencePageState extends State<ListExperiencePage> {
  List<ExperienceModel> experiences = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          injector.get<ProfileBloc>()..add(const ProfileGetUserExperience()),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is ProfileGetUserExperienceSuccess) {
            experiences = state.experiences;
          } else if (state is ProfileDeleteExperienceSuccess) {
            final experiencesCopy = [...experiences];
            experiencesCopy?.removeWhere((element) => element.id == state.id);
            experiences = experiencesCopy;
          } else if (state is ProfileUpdateUserExperienceSuccess) {
            final itemWillbeRemove = experiences?.firstWhere(
                (element) => element.id == state.experienceModel.id);
            if (itemWillbeRemove != null) {
              final position = experiences?.indexOf(itemWillbeRemove);
              if (position != null) {
                final experiencesCopy = [...experiences];
                experiencesCopy?.removeAt(position);
                experiencesCopy?.insert(position, state.experienceModel);
                experiences = experiencesCopy;
              }
            }
          }
          return MyScaffold(
            useAppBar: true,
            canBack: true,
            horizontalMargin: 20,
            appBarTitle: 'Experience',
            body: (state == null)
                ? const MyLoading()
                : Column(
                    children: [
                      Padding(
                        padding: context.padding(vertical: 32, bottom: 12),
                        child: AppFlatButton(context).elevatedButton(
                            width: context.width,
                            title: 'Add New Experience',
                            onPressed: () => context.router
                                .push(const AddNewExperienceRoute())
                                .then((value) => value != null
                                    ? context
                                        .read<ProfileBloc>()
                                        .add(const ProfileGetUserExperience())
                                    : null)),
                      ),
                      Expanded(
                          child: ListView.builder(
                        itemCount: experiences.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            experiences[index].toWidget(
                          context,
                          onUpdate: () =>
                              _updateExp(context, experiences[index]),
                          onDelete: () =>
                              _deleteExpe(context, experiences[index]),
                        ),
                      ))
                    ],
                  ),
          );
        },
      ),
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
