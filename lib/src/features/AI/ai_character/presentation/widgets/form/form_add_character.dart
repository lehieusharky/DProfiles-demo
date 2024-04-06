import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/buttons/flat_button.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class FormAddCharacter extends StatelessWidget {
  const FormAddCharacter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: context.padding(bottom: 24),
          child: Text(
            appLocal(context).addYourCharacter,
            style: AppFont()
                .fontTheme(context, weight: FontWeight.bold)
                .labelMedium,
          ),
        ),
        Text(
          'Inspiring',
          style: AppFont().fontTheme(context).bodyLarge,
        ),
        Padding(
          padding: context.padding(top: 5, bottom: 15),
          child: Row(
            children: [
              Tuple2(const Color(0xff58BD7D), () {}),
              Tuple2(const Color(0xff4BC9F0), () {}),
              Tuple2(const Color(0xff3772FF), () {}),
              Tuple2(const Color(0xff9757D7), () {}),
              Tuple2(const Color(0xffBB6BD9), () {}),
            ]
                .map((e) => Padding(
                      padding: context.padding(horizontal: 0.5),
                      child: Flexible(
                        child: Container(
                          width: context.sizeWidth(context.width / 6.5),
                          height: context.sizeHeight(10),
                          decoration: BoxDecoration(
                              color: e.item1,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
        Text(
          'Smart',
          style: AppFont().fontTheme(context).bodyLarge,
        ),
        Padding(
          padding: context.padding(top: 5, bottom: 15),
          child: Row(
            children: [
              Tuple2(const Color(0xff58BD7D), () {}),
              Tuple2(const Color(0xff4BC9F0), () {}),
              Tuple2(const Color(0xff3772FF), () {}),
              Tuple2(const Color(0xff9757D7), () {}),
              Tuple2(const Color(0xffE6E8EC), () {}),
            ]
                .map((e) => Padding(
                      padding: context.padding(horizontal: 0.5),
                      child: Flexible(
                        child: Container(
                          width: context.sizeWidth(context.width / 6.5),
                          height: context.sizeHeight(10),
                          decoration: BoxDecoration(
                              color: e.item1,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
        Text(
          'Supportive',
          style: AppFont().fontTheme(context).bodyLarge,
        ),
        Padding(
          padding: context.padding(top: 5, bottom: 15),
          child: Row(
            children: [
              Tuple2(const Color(0xff58BD7D), () {}),
              Tuple2(const Color(0xff4BC9F0), () {}),
              Tuple2(const Color(0xffE6E8EC), () {}),
              Tuple2(const Color(0xffE6E8EC), () {}),
              Tuple2(const Color(0xffE6E8EC), () {}),
            ]
                .map((e) => Padding(
                      padding: context.padding(horizontal: 0.5),
                      child: Flexible(
                        child: Container(
                          width: context.sizeWidth(context.width / 6.5),
                          height: context.sizeHeight(10),
                          decoration: BoxDecoration(
                              color: e.item1,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                      ),
                    ))
                .toList(),
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

  _save(BuildContext context) {
    context.router.push(const MyAICharacterRoute());
  }
}
