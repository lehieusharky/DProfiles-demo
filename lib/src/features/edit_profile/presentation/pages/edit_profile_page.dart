import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/bloc/edit_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/edit_profile/presentation/widgets/forms/form_basic_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<EditProfileBloc>(
      create: (context) =>
          injector.get<EditProfileBloc>()..add(const EditProfileGetUserInfo()),
      child:  MyScaffold(
        horizontalMargin: 20,
        useAppBar: true,
        canBack: true,
        appBarTitle: appLocal(context).basicInformation,
        body: const SingleChildScrollView(child: FormEditBasicInfo()),
      ),
    );
  }
}
