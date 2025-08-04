import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skill_playground/screens/stream/stream_screen.dart';

void main() {
  testWidgets('StreamScreen mostra erro depois de 5 segundos', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: StreamScreen()));

    await tester.pump(const Duration(seconds: 6));

    expect(find.byIcon(Icons.error), findsOneWidget);
    expect(find.textContaining('Erro:'), findsOneWidget);
  });
}
