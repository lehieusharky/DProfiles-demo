enum SimpleStateStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == SimpleStateStatus.initial;
  bool get isLoading => this == SimpleStateStatus.loading;
  bool get isSuccess => this == SimpleStateStatus.success;
  bool get isFailure => this == SimpleStateStatus.failure;
}
