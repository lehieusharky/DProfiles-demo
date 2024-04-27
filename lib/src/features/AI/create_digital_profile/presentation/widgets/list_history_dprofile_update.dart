import 'package:demo_dprofiles/src/core/ui/my_loading.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/models/history_dprofile_update_model.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/domain/entities/ext_history_dprofile_entity.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/presentation/bloc/create_digital_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListHistoryDProfileUpdate extends StatefulWidget {
  const ListHistoryDProfileUpdate({super.key});

  @override
  State<ListHistoryDProfileUpdate> createState() =>
      _ListHistoryDProfileUpdateState();
}

class _ListHistoryDProfileUpdateState extends State<ListHistoryDProfileUpdate> {
  List<HistoryDProfileUpdateModel>? histories;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CreateDigitalProfileBloc, CreateDigitalProfileState,
        List<HistoryDProfileUpdateModel>?>(
      selector: (state) {
        if (state is GetDProfileUpdateHistorySuccess) {
          histories = state.histories;
        }

        return histories;
      },
      builder: (context, state) {
        if (histories == null) {
          return const MyLoading();
        } else {
          return Column(
            children: histories!.map((e) => e.toWidget(context)).toList(),
          );
        }
      },
    );
  }
}
