import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_shimmer.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/sub_profiles/profile/skill_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/data/models/public_language_model.dart';
import 'package:demo_dprofiles/src/features/pubic_profile/presentation/bloc/public_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublicLanguagesComponent extends StatefulWidget {
  const PublicLanguagesComponent({Key? key}) : super(key: key);

  @override
  State<PublicLanguagesComponent> createState() =>
      _PublicLanguagesComponentState();
}

class _PublicLanguagesComponentState extends State<PublicLanguagesComponent> {
  List<PublicLanguageModel>? languages;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PublicProfileBloc, PublicProfileState,
        List<PublicLanguageModel>?>(
      selector: (state) {
        if (state is PublicProfileGetLanguagesSuccess) {
          languages = state.languages;
        }

        return languages;
      },
      builder: (context, state) {
        return Padding(
          padding: context.padding(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TitleSubPage(title: 'Languages', canEdit: false),
              context.sizedBox(height: 5),
              if (languages == null)
                const MyShimmer(count: 1, height: 150)
              else
                Wrap(
                  spacing: 1,
                  runSpacing: 1,
                  children: List.generate(
                      languages!.length,
                      (index) => SkillItem(
                          title: languages![index].language!.name ?? '')),
                )
            ],
          ),
        );
      },
    );
  }
}
