import 'package:auto_route/auto_route.dart';
import 'package:demo_dprofiles/src/core/di/di.dart';
import 'package:demo_dprofiles/src/core/ui/my_scaffold.dart';
import 'package:demo_dprofiles/src/features/search/presentation/bloc/bloc/search_bloc.dart';
import 'package:demo_dprofiles/src/features/search/presentation/widgets/form/form_search_bar.dart';
import 'package:demo_dprofiles/src/features/search/presentation/widgets/list_search_result.dart';
import 'package:demo_dprofiles/src/utils/presentation/widgets/sliver_app_bar/my_sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchHomePage extends StatelessWidget {
  const SearchHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => injector.get<SearchBloc>(),
      child: MyScaffold(
        horizontalMargin: 20,
        useAppBar: true,
        canBack: true,
        appBarTitle: 'Search',
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
                      const MySliverAppBar(
                        height: 70,
                        child: FormSearchBar(),
                      ),
                    ],
            body: const Expanded(child: ListSearchResult())),
      ),
    );
  }
}
