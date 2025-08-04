import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skill_playground/screens/slivers/sliver_screen.dart';

void main() {
  testWidgets('SliverScreen exibe título e itens da lista', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: SliverScreen()));

    expect(find.text('Custom Slivers'), findsOneWidget);
    expect(find.byType(ListTile), findsWidgets);
  });
}
