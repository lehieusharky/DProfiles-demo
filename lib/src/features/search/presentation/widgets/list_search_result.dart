import 'package:demo_dprofiles/src/core/app_responsive.dart';
import 'package:demo_dprofiles/src/core/ui/show_my_dialog.dart';
import 'package:demo_dprofiles/src/features/search/data/models/search_bar_result_model.dart';
import 'package:demo_dprofiles/src/features/search/domain/entities/ext_search_result_entity.dart';
import 'package:demo_dprofiles/src/features/search/presentation/bloc/bloc/search_bloc.dart';
import 'package:demo_dprofiles/src/theme/app_color_scheme.dart';
import 'package:demo_dprofiles/src/theme/app_text_style.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/icons/my_icon_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ListSearchResult extends StatefulWidget {
  const ListSearchResult({super.key});

  @override
  State<ListSearchResult> createState() => _ListSearchResultState();
}

class _ListSearchResultState extends State<ListSearchResult> {
  List<SearchBarResultModel>? results;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SearchBloc, SearchState, List<SearchBarResultModel>?>(
      selector: (state) {
        if (state is SearchBarDoRequestSuccess) {
          Navigator.pop(context);
          results = state.result;
        }

        if (state is SearchLoading) {
          showLoadingDialog(context);
        }

        return results;
      },
      builder: (context, state) {
        if (results == null) {
          return _buildNullResult();
        } else if (results!.isEmpty) {
          return _buildEmptyResult();
        } else {
          return AnimationLimiter(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: results!.length,
              itemBuilder: (BuildContext context, int index) {
                return AnimationConfiguration.staggeredList(
                  position: index,
                  delay: const Duration(milliseconds: 100),
                  child: SlideAnimation(
                    duration: const Duration(milliseconds: 2500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: FadeInAnimation(
                      curve: Curves.fastLinearToSlowEaseIn,
                      duration: const Duration(milliseconds: 2500),
                      child: results![index].toWidget(context),
                    ),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }

  Widget _buildNullResult() {
    return Container(
      padding: context.padding(top: 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const MyIconApp(),
          Padding(
            padding: context.padding(vertical: 5),
            child: Text(
              'Find your friend profile now',
              style: AppFont()
                  .fontTheme(context, color: colorScheme(context).outline)
                  .bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyResult() {
    return Container(
      padding: context.padding(top: 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const MyIconApp(),
          Padding(
            padding: context.padding(vertical: 5),
            child: Text(
              'Result is empty. Try another keywords!',
              style: AppFont()
                  .fontTheme(context, color: colorScheme(context).outline)
                  .bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
