import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_education_model.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ListEducationPage extends StatefulWidget {
  const ListEducationPage({Key? key}) : super(key: key);

  @override
  State<ListEducationPage> createState() => _ListEducationPageState();
}

class _ListEducationPageState extends State<ListEducationPage> {
  List<EducationModel>? educations;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          injector.get<ProfileBloc>()..add(const ProfileGetUserEducations()),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state is ProfileGetUserEducationsSuccess) {
            educations = state.educations;
          }
        },
        builder: (context, state) {
          return MyScaffold(
              useAppBar: true,
              canBack: true,
              horizontalMargin: 20,
              appBarTitle: appLocal(context).educationInformation,
              body: (educations == null)
                  ? const MyLoading()
                  : Column(
                      children: [
                        Padding(
                          padding: context.padding(vertical: 32, bottom: 12),
                          child: AppFlatButton(context).elevatedButton(
                              width: context.width,
                              title: appLocal(context).addNewEducation,
                              onPressed: () => context.router
                                  .push(const AddNewEducationRoute())
                                  .then((value) => value != null
                                      ? context
                                          .read<ProfileBloc>()
                                          .add(const ProfileGetUserEducations())
                                      : null)),
                        ),
                        Expanded(
                            child: ListView.builder(
                                itemCount: educations!.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) =>
                                    educations![index].toWidget(context)))
                      ],
                    ));
        },
      ),
    );
  }
}
