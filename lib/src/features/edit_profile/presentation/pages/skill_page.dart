import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/bloc/edit_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/widgets/forms/form_skill.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SkillPage extends StatelessWidget {
  const SkillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EditProfileBloc>(
      create: (context) => injector.get<EditProfileBloc>(),
      child: const MyScaffold(
        horizontalMargin: 20,
        useAppBar: true,
        canBack: true,
        appBarTitle: 'About',
        body: SingleChildScrollView(child: FormSkill()),
      ),
    );
  }
}
