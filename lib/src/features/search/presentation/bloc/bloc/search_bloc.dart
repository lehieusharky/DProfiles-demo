import 'dart:async';

import 'package:demo_dprofiles/src/features/search/data/models/search_bar_result_model.dart';
import 'package:demo_dprofiles/src/features/search/domain/usecases/search_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchUseCase searchUseCase;
  SearchBloc(this.searchUseCase) : super(const _Initial()) {
    on<SearchBarDoRequest>(_searchRequest);
  }

  FutureOr<void> _searchRequest(
      SearchBarDoRequest event, Emitter<SearchState> emit) async {
    emit(const SearchLoading());
    final result =
        await searchUseCase.searchBar(event.keyWord, event.page, event.limit);

    result.fold(
      (l) => emit(const SearchError(
          title: 'Search failed', msg: 'Check your keyword again')),
      (r) {
        final data = r.data as List;

        final searchResult =
            data.map((e) => SearchBarResultModel.fromJson(e)).toList();

        emit(SearchBarDoRequestSuccess(searchResult));
      },
    );
  }
}
