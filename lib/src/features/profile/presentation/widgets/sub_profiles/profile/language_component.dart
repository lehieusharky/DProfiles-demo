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
  List<UserLanguageModel> languages = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state is ProfileGetUserLanguagesSuccess) {
          languages = [];

          for (var element in state.languages) {
            languages.add(element);
          }

          context.read<ProfileBloc>().add(const ProfileGetMetaLanguage());
        }

        if (state is ProfileGetMetaLanguageSuccess) {
          _handleGetMetaLanguage(state);
        }
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
            if (state is ProfileGetMetaLanguageSuccess)
              Wrap(
                spacing: 1,
                runSpacing: 1,
                children: List.generate(
                    languages.length, (index) => languages[index].toWidget()),
              )
          ],
        );
      },
    );
  }

  void _handleGetMetaLanguage(ProfileGetMetaLanguageSuccess state) {
    Map<int, String> mapLanguage = {};

    for (var e in state.languages) {
      mapLanguage[e.id!] = e.name!;
    }

    for (var i = 0; i < languages.length; i++) {
      final updateLanguage =
          languages[i].copyWith(name: mapLanguage[languages[i].languageId]);
      languages.removeAt(i);

      languages.insert(i, updateLanguage);
    }
  }
}
