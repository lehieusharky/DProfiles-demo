import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_character/presentation/bloc/ai_character_bloc.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormTrainingAi extends StatefulWidget {
  const FormTrainingAi({Key? key}) : super(key: key);

  @override
  State<FormTrainingAi> createState() => _FormTrainingAiState();
}

class _FormTrainingAiState extends State<FormTrainingAi>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: context.padding(bottom: 32),
          child: Text(
            'Upload your documents to your AI knowledge base',
            style: AppFont()
                .fontTheme(context, weight: FontWeight.bold)
                .labelMedium,
          ),
        ),
        Padding(
          padding: context.padding(horizontal: 2),
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(4),
            padding: const EdgeInsets.all(6),
            dashPattern: const [10, 5],
            color: colorScheme(context).primary,
            child: Container(
              width: context.width,
              height: context.sizeHeight(135),
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(IconsaxOutline.document_upload,
                      color: colorScheme(context).outline),
                  Padding(
                    padding: context.padding(top: 8, bottom: 4),
                    child: Text(
                      'Upload your file',
                      style: AppFont()
                          .fontTheme(
                            context,
                            weight: FontWeight.bold,
                            color: colorScheme(context).outline,
                          )
                          .titleSmall,
                    ),
                  ),
                  Text(
                    'Max 5Mb for 1 file',
                    style: AppFont()
                        .fontTheme(context, color: colorScheme(context).outline)
                        .bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: context.padding(top: 24, bottom: 32),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: context.padding(right: 8),
                child: Icon(IconsaxOutline.warning_2,
                    color: colorScheme(context).outline),
              ),
              Expanded(
                  child: Text(
                      'You can upload text file .pdf or .docx format about specific knowledge your AI will share with the targeted audience, for example: Menu, best pr articles about your store, history of store..',
                      style: AppFont()
                          .fontTheme(context,
                              color: colorScheme(context).outline)
                          .bodySmall))
            ],
          ),
        ),
        Padding(
          padding: context.padding(vertical: 32),
          child: AppFlatButton(context).elevatedButton(
            width: context.width,
            onPressed: () => _save(context),
            title: appLocal(context).save.toUpperCase(),
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;

  _save(BuildContext context) {
    context.read<AiCharacterBloc>().add(const GenerateCharacterBot());
  }
}
