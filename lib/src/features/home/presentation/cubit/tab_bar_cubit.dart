import 'package:bloc/bloc.dart';

part 'tab_bar_state.dart';

class TabBarCubit extends Cubit<TabBarState> {
  TabBarCubit() : super(TabBarState.initial);

  onTabChanged(int index) {
    emit(TabBarState(index));
  }
}
