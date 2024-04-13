import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/AI/ai_features/presentation/bloc/ai_features_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/theme/assets.gen.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/my_point_user.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeaderAutoGenerate extends StatefulWidget {
  const HeaderAutoGenerate({super.key, required this.aiFeatureTitle});

  final String aiFeatureTitle;

  @override
  State<HeaderAutoGenerate> createState() => _HeaderAutoGenerateState();
}

class _HeaderAutoGenerateState extends State<HeaderAutoGenerate> {
  late FixedExtentScrollController _scrollController;

  @override
  void initState() {
    _scrollController = FixedExtentScrollController();
    super.initState();
  }

  int _currentPoint = 0;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AiFeaturesBloc, AiFeaturesState, int>(
      selector: (state) {
        if (state is GetCurrentPointOfUserSuccess) {
          if (state.point >= 0) {
            _scrollController.animateToItem(state.point,
                duration: const Duration(seconds: 3), curve: Curves.ease);
            _currentPoint = state.point;
          }
        }

        if (state is GenerateProfileIntroductionSuccess) {
          if (_currentPoint == 0) {
            showErrorDialog(context,
                title: 'Generate failed',
                description: "You don't have enough token!");
          } else {
            _scrollController.animateToItem(_currentPoint - 10,
                duration: const Duration(seconds: 1), curve: Curves.easeInOut);

            _currentPoint -= 10;
          }
        }
        return _currentPoint;
      },
      builder: (context, state) {
        return Container(
          padding: context.padding(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: _buildTitle(context)),
              _buildWallet(context, state),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'AI Tools',
          style:
              AppFont().fontTheme(context, weight: FontWeight.bold).titleSmall,
        ),
        Padding(
          padding: context.padding(top: 8),
          child: Text(
            widget.aiFeatureTitle,
            maxLines: 2,
            style: AppFont()
                .fontTheme(context, color: colorScheme(context).outline)
                .bodyLarge,
          ),
        ),
      ],
    );
  }

  Widget _buildWallet(BuildContext context, int point) {
    return Padding(
      padding: context.padding(left: 20),
      child: Container(
        padding: context.padding(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
            color: colorScheme(context).outlineVariant.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyPointUser(
              controller: _scrollController,
              width: 30,
              height: 15,
              itemExtent: 20,
              children: List.generate(
                  point + 1,
                  (index) => Text(
                        index.toString(),
                        style: AppFont()
                            .fontTheme(context,
                                weight: FontWeight.w600,
                                color: colorScheme(context).outline)
                            .bodyMedium,
                      )),
            ),
            context.sizedBox(width: 5),
            Assets.icons.iconWallet.svg(),
          ],
        ),
      ),
    );
  }
}
