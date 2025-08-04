Stream<int> generateNumberWithError() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }

  throw Exception('Erro na stream');
}
