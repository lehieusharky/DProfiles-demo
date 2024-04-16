import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/part_component.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/title_sub_page.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:flutter/material.dart';

class OpenToComponent extends StatelessWidget {
  final String salaryPayType;
  final int? salary;
  const OpenToComponent({Key? key, required this.salaryPayType, this.salary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const TitleSubPage(title: 'Open to', route: OpenToWorkRoute()),
        _buildOpenField(context,
            title: 'Pay',
            type: salaryPayType,
            icon: Assets.icons.iconBag.svg()),
        _buildOpenField(context,
            title: 'Salary',
            type: salary == null ? '' : salary.toString(),
            icon: Assets.icons.iconWallet.svg()),
      ],
    );
  }

  Widget _buildOpenField(
    BuildContext context, {
    required String title,
    required String type,
    required Widget icon,
  }) {
    return Padding(
      padding: context.padding(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppFont()
                .fontTheme(context,
                    color: colorScheme(context).outline,
                    weight: FontWeight.bold)
                .bodyLarge,
          ),
          PartComponent(
            title: type,
            icon: icon,
          ),
        ],
      ),
    );
  }
}
