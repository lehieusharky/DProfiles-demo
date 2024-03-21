import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

class ScholarshipsHome extends StatefulWidget {
  const ScholarshipsHome({Key? key}) : super(key: key);

  @override
  State<ScholarshipsHome> createState() => _ScholarshipsHomeState();
}

class _ScholarshipsHomeState extends State<ScholarshipsHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding(horizontal: 20, top: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: context.padding(bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Scholarships',
                  style: AppFont()
                      .fontTheme(context, weight: FontWeight.w600)
                      .titleSmall,
                ),
                TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)))),
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: AppFont()
                        .fontTheme(context, weight: FontWeight.w600)
                        .bodyMedium,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: context.sizeHeight(265),
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: context.padding(right: 16),
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: context.sizeWidth(240),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Assets.images.home.scholaships
                              .image(height: context.sizeHeight(140)),
                          Text(
                            'Individual traval Grant',
                            style: AppFont()
                                .fontTheme(context, weight: FontWeight.bold)
                                .bodyMedium,
                          ),
                          Padding(
                            padding: context.padding(vertical: 5),
                            child: Text(
                              'University A',
                              style: AppFont()
                                  .fontTheme(context,
                                      weight: FontWeight.w600,
                                      color: colorScheme(context).outline)
                                  .bodySmall,
                            ),
                          ),
                          Padding(
                            padding: context.padding(bottom: 8),
                            child: Text(
                              'Price: \$1000',
                              style: AppFont()
                                  .fontTheme(context, weight: FontWeight.bold)
                                  .bodyMedium,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(IconsaxOutline.bookmark,
                                  size: 20,
                                  color: colorScheme(context).outline),
                              Padding(
                                padding: context.padding(left: 8),
                                child: Text(
                                  'Master, Bachelor',
                                  style: AppFont()
                                      .fontTheme(context,
                                          weight: FontWeight.w600,
                                          color: colorScheme(context).outline)
                                      .bodySmall,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: context.padding(top: 5),
                            child: Row(
                              children: [
                                Icon(IconsaxOutline.buy_crypto,
                                    size: 20,
                                    color: colorScheme(context).outline),
                                Padding(
                                  padding: context.padding(left: 8),
                                  child: Text(
                                    'Learn now',
                                    style: AppFont()
                                        .fontTheme(context,
                                            weight: FontWeight.w600,
                                            color: colorScheme(context).outline)
                                        .bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
