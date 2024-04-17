import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_certificate_model.dart';
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
      child: BlocSelector<ProfileBloc, ProfileState, List<ExperienceModel>?>(
        selector: (state) {
          if (state is ProfileGetUserExperienceSuccess) {
            experiences = state.experiences;
          }

          return experiences;
        },
        builder: (context, state) {
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
                            title: 'Add new experience',
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
                                  experiences[index].toWidget(context)))
                    ],
                  ),
          );
        },
      ),
    );
  }
}
