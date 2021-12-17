import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tenis_certo/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      expect(find.text('Clicked: 1'), findsOneWidget);

      final Finder fab = find.byType(FloatingActionButton);

      await tester.tap(fab);

      await tester.pump();

      expect(find.text('Clicked: 2'), findsOneWidget);
    });
  });
}
