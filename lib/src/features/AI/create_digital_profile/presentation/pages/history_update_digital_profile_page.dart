import 'package:auto_route/annotations.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/list_history_dprofile_update.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/widgets/title_history_update_dprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';


@RoutePage()
class HistoryUpdateDigitalProfilePage extends StatelessWidget {
  const HistoryUpdateDigitalProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateDigitalProfileBloc>(
      create: (context) => injector.get<CreateDigitalProfileBloc>()
        ..add(const GetDProfileUpdateHistory()),
      child: MyScaffold(
        useAppBar: true,
        canBack: true,
        horizontalMargin: 20,
        appBarTitle: appLocal(context).historyUpdateDProfile,
        body: const Column(
          children:  [
            TitleHistoryUpdateDProfile(),
            Expanded(child: ListHistoryDProfileUpdate())
          ],
        ),
      ),
    );
  }
}
