import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_divider.dart';
import 'package:demo_dprofiles/src/features/profile/data/models/user_info_model.dart';
import 'package:demo_dprofiles/src/features/profile/presentation/widgets/part_component.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/theme/my_color.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class SubTransactionsPage extends StatelessWidget {
  final UserInfoModel userInfo;

  const SubTransactionsPage({Key? key, required this.userInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: context.padding(all: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: colorScheme(context).primary,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: context.padding(right: 24),
                    child: Assets.images.profile.transaction.image(
                      width: context.sizeWidth(60),
                      height: context.sizeWidth(60),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Total balance',
                            style: AppFont()
                                .fontTheme(context, color: MyColor.getWhite)
                                .bodyMedium,
                          ),
                          Padding(
                            padding: context.padding(left: 8),
                            child: const Icon(IconsaxOutline.eye,
                                color: MyColor.getWhite),
                          )
                        ],
                      ),
                      context.sizedBox(height: 4),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '~\$432.99',
                            style: AppFont()
                                .fontTheme(context,
                                    weight: FontWeight.w600,
                                    color: MyColor.getWhite)
                                .titleSmall,
                          ),
                          Padding(
                            padding: context.padding(left: 8),
                            child: Text(
                              '+12.99%',
                              style: AppFont()
                                  .fontTheme(context,
                                      weight: FontWeight.w600,
                                      color: MyColor.getWhite)
                                  .bodyMedium,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const MyDivider(
                verticalMargin: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PartComponent(
                    title: '100',
                    titleColor: MyColor.getWhite,
                    backgroundColor: colorScheme(context).secondary,
                    icon: Assets.icons.iconWallet.svg(color: MyColor.getWhite),
                  ),
                  Text(
                    'Top-up Now',
                    style: AppFont()
                        .fontTheme(context, color: MyColor.getWhite)
                        .bodyMedium,
                  ),
                ],
              )
            ],
          ),
        ),
        context.sizedBox(height: 12),
        Container(
          padding: context.padding(all: 12),
          decoration: BoxDecoration(
              color: colorScheme(context).outlineVariant.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Total',
                    style: AppFont()
                        .fontTheme(context, weight: FontWeight.w600)
                        .bodyMedium,
                  ),
                  Text(
                    'Transactions',
                    style: AppFont()
                        .fontTheme(context, weight: FontWeight.w600)
                        .bodyMedium,
                  ),
                ],
              ),
              Text(
                '20',
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.w600)
                    .titleSmall,
              ),
            ],
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: context.sizeWidth(100),
              child: Text(
                'ID',
                style: AppFont()
                    .fontTheme(context,
                        color: colorScheme(context).outline,
                        weight: FontWeight.w600)
                    .bodySmall,
              ),
            ),
            SizedBox(
              width: context.sizeWidth(150),
              child: Text(
                'Time',
                style: AppFont()
                    .fontTheme(context,
                        color: colorScheme(context).outline,
                        weight: FontWeight.w600)
                    .bodySmall,
              ),
            ),
            const Spacer(),
            Text(
              'Amount',
              style: AppFont()
                  .fontTheme(context,
                      color: colorScheme(context).outline,
                      weight: FontWeight.w600)
                  .bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}
