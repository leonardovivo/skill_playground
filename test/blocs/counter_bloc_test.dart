import 'package:flutter_test/flutter_test.dart';
import 'package:skill_playground/blocs/counter_bloc.dart';

void main() {
  group('CounterBloc', () {
    test('emite [1] quando IncrementEvent é adicionado ao estado inicial 0', () {
      final bloc = CounterBloc();


      expectLater(
        bloc.stream,
        emitsInOrder([1]),
      );

      bloc.add(IncrementEvent());
    });

    test('emite os múltiplos de incremento corretamente', () async {
      final bloc = CounterBloc();

      final expected = [1, 2, 3, 4, 5];
      final actual = <int>[];

      bloc.stream.listen(actual.add);
      for (int i = 0; i < 5; i++) {
        bloc.add(IncrementEvent());
        await Future.delayed(const Duration(milliseconds: 10));
      }

      await Future.delayed(const Duration(milliseconds: 50));

      expect(actual, expected);
    });
  });
}