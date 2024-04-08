import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/certificate_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/education_model.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/experiance_model.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_certificate_model.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_education_model.dart';
import 'package:demo_dprofiles/src/utils/extensions/ext_models/ext_experience_model.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormProfiles extends StatefulWidget {
  const FormProfiles({Key? key}) : super(key: key);

  @override
  State<FormProfiles> createState() => _FormProfilesState();
}

class _FormProfilesState extends State<FormProfiles> {
  List<EducationModel> educations = [];

  List<CertificateModel> certificates = [];

  List<ExperienceModel> experiences = [];

  @override
  Widget build(BuildContext context) {
    certificates = context.watch<AiCharacterBloc>().certificates;
    certificates = context.watch<AiCharacterBloc>().certificates;
    experiences = context.watch<AiCharacterBloc>().experiences;

    return BlocBuilder<AiCharacterBloc, AiCharacterState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: context.padding(bottom: 24),
              child: Text(
                appLocal(context).addYourProfile,
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .labelMedium,
              ),
            ),
            Padding(
              padding: context.padding(bottom: 15),
              child: Text(
                appLocal(context).education,
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .bodyLarge,
              ),
            ),
            Column(
              children: educations.map((e) => e.toWidget(context)).toList(),
            ),
            Padding(
              padding: context.padding(bottom: 15, top: 27),
              child: Text(
                appLocal(context).certificates,
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .bodyLarge,
              ),
            ),
            Column(
              children: certificates.map((e) => e.toWidget(context)).toList(),
            ),
            Padding(
              padding: context.padding(bottom: 15, top: 27),
              child: Text(
                appLocal(context).experiences,
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .bodyLarge,
              ),
            ),
            Column(
              children: experiences.map((e) => e.toWidget(context)).toList(),
            ),
            Padding(
              padding: context.padding(vertical: 32),
              child: AppFlatButton(context).elevatedButton(
                width: context.width,
                onPressed: () => _continue(context),
                title: appLocal(context).continueButton.toUpperCase(),
              ),
            ),
          ],
        );
      },
    );
  }

  _continue(BuildContext context) {
    context
        .read<AiCharacterBloc>()
        .add(const AICharacterChangeCreationStep(isNext: true));
  }
}
