import 'package:demo_dprofiles/src/features/profile/data/models/user_language_model.dart';
import 'package:demo_dprofiles/src/features/profile/domain/entities/ext_user_language_entity.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageComponent extends StatefulWidget {
  const LanguageComponent({Key? key}) : super(key: key);

  @override
  State<LanguageComponent> createState() => _LanguageComponentState();
}

class _LanguageComponentState extends State<LanguageComponent> {
  List<UserLanguageModel>? languages;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, List<UserLanguageModel>?>(
      selector: (state) {
        if (state is ProfileGetUserLanguagesSuccess) {
          languages = state.languages;
        }

        return languages;
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleSubPage(
              title: 'Language',
              route: const AddLanguageRoute(),
              onCallBack: () => context
                  .read<ProfileBloc>()
                  .add(const ProfileGetUserLanguages()),
            ),
            if (languages != null)
              Wrap(
                spacing: 1,
                runSpacing: 1,
                children: List.generate(
                    languages!.length, (index) => languages![index].toWidget()),
              )
          ],
        );
      },
    );
  }
}
