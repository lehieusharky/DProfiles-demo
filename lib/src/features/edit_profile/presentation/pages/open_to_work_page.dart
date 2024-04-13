import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/widgets/open_to_work_form.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class OpenToWorkPage extends StatelessWidget {
  const OpenToWorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => injector.get<ProfileBloc>(),
      child: const MyScaffold(
        horizontalMargin: 20,
        canBack: true,
        useAppBar: true,
        appBarTitle: 'Open to work',
        body: SingleChildScrollView(
          child: OpenToWorkForm(),
        ),
      ),
    );
  }
}
