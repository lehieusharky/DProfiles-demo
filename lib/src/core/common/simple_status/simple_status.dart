import 'simple_state_status.dart';

abstract class SimpleState {
  final SimpleStateStatus status;
  const SimpleState({this.status = SimpleStateStatus.initial});
}
