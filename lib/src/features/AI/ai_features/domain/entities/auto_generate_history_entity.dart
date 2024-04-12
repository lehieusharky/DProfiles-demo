import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/auto_generate_history_model.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/constant/ai_features_type.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:flutter/material.dart';

extension AutoGenerateHistoryModelExt on AutoGenerateHistoryModel {
  Widget toWidget(BuildContext context) {
    return Padding(
      padding: context.padding(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: context.padding(bottom: 4),
            child: InkWell(
              onTap: () => context.router.push(
                AutoGenerationHistoryDetailRoute(
                    type: _type(context), id: id ?? 0),
              ),
              child: Container(
                padding: context.padding(all: 12),
                decoration: BoxDecoration(
                  color: colorScheme(context).outlineVariant.withOpacity(0.05),
                  border: Border.all(
                      color:
                          colorScheme(context).outlineVariant.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildTopic(context),
                    _buildPrompt(context),
                  ],
                ),
              ),
            ),
          ),
          if (historyDate != null)
            Text(historyDate!.convertToDDMMYYFormat(),
                style: AppFont()
                    .fontTheme(context, color: colorScheme(context).outline)
                    .bodyMedium),
        ],
      ),
    );
  }

  Widget _buildTopic(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: context.sizeWidth(80),
          child: Text(appLocal(context).topic,
              style: AppFont()
                  .fontTheme(context,
                      weight: FontWeight.w600,
                      color: colorScheme(context).primary)
                  .bodyLarge),
        ),
        if (historyType != null)
          Expanded(
            child: Text(_type(context).getTitle(context),
                style: AppFont()
                    .fontTheme(context, color: colorScheme(context).primary)
                    .bodyLarge),
          ),
      ],
    );
  }

  Widget _buildPrompt(BuildContext context) {
    return Padding(
      padding: context.padding(top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: context.sizeWidth(80),
            child: Text(_type(context).getPrompt(context),
                style: AppFont()
                    .fontTheme(context,
                        weight: FontWeight.w600,
                        color: colorScheme(context).outline)
                    .bodySmall),
          ),
          if (result != null)
            Expanded(
              child: Text(result!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppFont()
                      .fontTheme(context, color: colorScheme(context).outline)
                      .bodyMedium),
            ),
        ],
      ),
    );
  }

  AiFeatureTypes _type(BuildContext context) {
    return switch (historyType) {
      'INTERVIEW_QUESTION' => AiFeatureTypes.interviewQuestion,
      'INTRODUCTION' => AiFeatureTypes.profileIntroduction,
      'COVER_LETTER' => AiFeatureTypes.coverLetter,
      'SKILL_KNOWLEDGE' => AiFeatureTypes.skillKnowledge,
      _ => AiFeatureTypes.profileIntroduction,
    };
  }
}
