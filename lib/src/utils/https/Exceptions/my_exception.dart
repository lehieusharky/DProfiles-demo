class MyException implements FormatException {
  final Exception e;

  MyException(this.e);
  @override
  String get message => throw UnimplementedError();

  @override
  // TODO: implement offset
  int? get offset => throw UnimplementedError();

  @override
  // TODO: implement source
  get source => throw UnimplementedError();

}