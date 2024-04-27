import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_education_model.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
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

        if (state is ProfileDeleteEducationSuccess) {
          context.read<ProfileBloc>().add(const ProfileGetUserEducations());
        }
        return educations;
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TitleSubPage(
              title: 'Education',
              route: const ListEducationRoute(),
              onCallBack: () => context
                  .read<ProfileBloc>()
                  .add(const ProfileGetUserEducations()),
            ),
            if (state == null)
              const MyShimmer(count: 1, height: 150)
            else
              Column(
                mainAxisSize: MainAxisSize.min,
                children: educations
                    .map((e) => e.toWidget(context,
                        onDelete: () => _deleteEducation(context, e)))
                    .toList(),
              )
          ],
        );
      },
    );
  }

  void _deleteEducation(BuildContext context, EducationModel education) async {
    await showMyDialog<String?>(context,
        title: const Text('Are you want to delete your education?'),
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
        context.read<ProfileBloc>().add(ProfileDeleteEducation(education.id!));
      }
    });
  }
}
