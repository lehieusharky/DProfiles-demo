import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_button.dart';
import 'package:demo_dprofiles/src/features/auth/presentation/widgets/auth_field.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/outline_button.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class OpenToWorkForm extends StatefulWidget {
  const OpenToWorkForm({Key? key}) : super(key: key);

  @override
  State<OpenToWorkForm> createState() => _OpenToWorkFormState();
}

class _OpenToWorkFormState extends State<OpenToWorkForm> {
  @override
  Widget build(BuildContext context) {
    final payController = TextEditingController();

    bool openToWork = false;

    return Padding(
      padding: context.padding(top: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Open to work',
                style: AppFont().fontTheme(context).bodyLarge,
              ),
              Switch.adaptive(
                  value: openToWork,
                  onChanged: (value) => setState(() {
                        openToWork = !openToWork;
                      })),
            ],
          ),
          Padding(
            padding: context.padding(top: 32),
            child: AuthField(
                title: 'PAY',
                hint: 'Breanna',
                suffixIcon: const Icon(IconsaxOutline.arrow_down_1),
                controller: payController),
          ),
          Padding(
            padding: context.padding(top: 32),
            child: AuthField(
              title: 'SALARY',
              hint: '\$10,000',
              suffixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '/hour',
                    style: AppFont()
                        .fontTheme(context, color: colorScheme(context).outline)
                        .bodySmall,
                  ),
                ],
              ),
              controller: payController,
            ),
          ),
          Padding(
            padding: context.padding(top: 24, bottom: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: AppOutlineButton(context).elevatedButton(
                    onPressed: () {},
                    title: 'Cancel',
                  ),
                ),
                context.sizedBox(width: 16),
                Expanded(
                  child: MyButton(
                    onPressed: () {},
                    title: 'Save',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
