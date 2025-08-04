import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skill_playground/screens/performance/performance_screen.dart';

void main() {
  testWidgets('PerformanceScreen mostra dois grids', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: PerformanceScreen()));

    final boxFinder = find.byType(Container);
    expect(boxFinder.evaluate().length >= 30, isTrue);
  });
}
