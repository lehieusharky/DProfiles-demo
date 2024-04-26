import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/routes/app_route.gr.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewHistoryTitle extends StatelessWidget {
  const ViewHistoryTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AiFeaturesBloc, AiFeaturesState, int?>(
      selector: (state) {
        if (state is GetAutoGenerateHistorySuccess) {
          return state.autoGenerateHistories.length;
        }

        return null;
      },
      builder: (context, state) {
        return Padding(
          padding: context.padding(vertical: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                appLocal(context).viewHistory,
                style: AppFont()
                    .fontTheme(context, weight: FontWeight.bold)
                    .titleSmall,
              ),
              TextButton(
                onPressed: (state != null && state != 0)
                    ? () => context.router.push(const AiFeaturesHistoryRoute())
                    : null,
                child: Text(appLocal(context).viewAll,
                    style: AppFont()
                        .fontTheme(context,
                            color: (state != null && state != 0)
                                ? colorScheme(context).primary
                                : colorScheme(context).outline)
                        .bodyMedium),
              ),
            ],
          ),
        );
      },
    );
  }
}
