part of 'tab_bar_cubit.dart';

class TabBarState {
  static TabBarState get initial => const TabBarState(0);
  final int index;
  const TabBarState(this.index);
}
