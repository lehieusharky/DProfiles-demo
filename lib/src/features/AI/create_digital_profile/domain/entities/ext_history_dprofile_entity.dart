import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/AI/create_digital_profile/data/models/history_dprofile_update_model.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:flutter/material.dart';

extension HistoryDProfileUpdateModelExt on HistoryDProfileUpdateModel {
  Widget toWidget(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: context.width * 0.3,
            child: _buildField(
              context,
              title: id.toString(),
              fontWeight: FontWeight.bold,
              titleColor: colorScheme(context).primary,
            )),
        SizedBox(
            width: context.width * 0.3,
            child: _buildField(context,
                title: transactionDate.convertToDDMMYYFormat())),
        const Spacer(),
        _buildField(context, title: description ?? '_')
      ],
    );
  }

  Widget _buildField(
    BuildContext context, {
    required String title,
    Color? titleColor,
    FontWeight? fontWeight,
  }) {
    return Text(
      title,
      style: AppFont()
          .fontTheme(context,
              weight: fontWeight,
              color: titleColor ?? colorScheme(context).outline)
          .bodyMedium,
    );
  }
}
