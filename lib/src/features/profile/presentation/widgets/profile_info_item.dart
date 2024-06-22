import 'dart:ui';

import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/my_divider.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/extensions/string_extensions.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart';
import 'package:readmore/readmore.dart';

import '../../../../theme/app_color_scheme.dart';
import '../../../../theme/assets.gen.dart';
import '../../../../theme/my_color.dart';

enum LayoutProfileItem{
  column,
  row
}

class ProfileInfoItem extends StatelessWidget {
  final String? title;
  final String? subTitle1;
  final String? subTitle2;
  final ImageProvider? image;
  final String? description;

  final VoidCallback? onDelete;
  final VoidCallback? onUpdate;
  final VoidCallback? onExpand;
  final LayoutProfileItem layout;

  const ProfileInfoItem(
      {super.key,
        this.layout = LayoutProfileItem.column,
      this.title,
      this.subTitle1,
      this.subTitle2,
      this.image,
      this.description,
      this.onDelete,
      this.onUpdate,
      this.onExpand});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: context.padding(top: 8),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: layout == LayoutProfileItem.column ? CrossAxisAlignment.center : CrossAxisAlignment.start,
              children: [
                ClipRect(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    width: context.sizeWidth(54),
                    height: context.sizeHeight(54),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image(
                      image: image ?? Assets.images.profile.mockCer.provider(),
                      fit: BoxFit.fill,
                    )
                  ),
                ),
                Padding(
                  padding: context.padding(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        title ?? "",
                        style: AppFont()
                            .fontTheme(context, weight: FontWeight.w500)
                            .labelSmall,
                      ),

                      Text.rich(TextSpan(children: [
                        TextSpan(
                          text: subTitle1 ?? "",
                          style: AppFont()
                              .fontTheme(context, weight: FontWeight.w400, color: colorScheme(context).outline)
                              .bodySmall,
                        ),
                        const TextSpan(text: "\t\t\t\t\t"),
                        TextSpan(
                          text: subTitle2 ?? "",
                          style: AppFont()
                              .fontTheme(context, weight: FontWeight.w400, color: colorScheme(context).outline)
                              .bodySmall,
                        ),
                      ])),
                      if(layout == LayoutProfileItem.row)
                      SizedBox(
                        width: context.sizeWidth(200),
                        child: Text(
                          textAlign: TextAlign.start,
                          description ?? "",
                          style: AppFont().fontTheme(context, weight: FontWeight.w400).bodyLarge,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),

            const SizedBox(
              height: 10,
            ),
            if(layout == LayoutProfileItem.column)
            SizedBox(
              width: context.sizeWidth(300),
              child: Text(
                textAlign: TextAlign.start,
                description ?? "",
                style: AppFont().fontTheme(context, weight: FontWeight.w400).bodyLarge,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const MyDivider(verticalMargin: 3)
          ],
        ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (onUpdate != null)
                    Padding(
                      padding: context.padding(horizontal: 15),
                      child: InkWell(
                          onTap: onUpdate,
                          child: SvgPicture.asset(Assets.icons.iconEdit.path) ),
                    ),
                  if (onDelete != null)
                    InkWell(
                        onTap: onDelete,
                        child: const Icon(Icons.delete, size: 20 , color: MyColor.grayB1B5C3,)),
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}
