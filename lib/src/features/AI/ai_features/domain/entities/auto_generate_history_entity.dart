import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/data/models/auto_generate_history_model.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
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
            child: Text(historyType!,
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
            child: Text(appLocal(context).prompt,
                style: AppFont().fontTheme(context).bodySmall),
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
}
