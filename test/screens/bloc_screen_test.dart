import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skill_playground/blocs/counter_bloc.dart';
import 'package:skill_playground/screens/bloc/bloc_screen.dart';

void main() {
  testWidgets('Teste do BlocScreen', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<CounterBloc>(
          create: (_) => CounterBloc(),
          child: const BlocScreen(),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Contador: 0'), findsOneWidget);
  });
}
