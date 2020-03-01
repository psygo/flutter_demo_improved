import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_demo_improved/main.dart';
import '../fixture_data/counter_fixture_data.dart';

void main() {
  group('Test the widgets', () {
    FlutterDemoApp app;

    setUp(() {
      app = FlutterDemoApp();
    });

    Future<void> pumpApp(WidgetTester tester) async =>
        await tester.pumpWidget(app);

    testWidgets('Initial setup', (WidgetTester tester) async {
      await pumpApp(tester);

      expect(find.text(initialCountAsString), findsOneWidget);
      expect(find.text(wrongInitialCountAsString), findsNothing);
    });

    testWidgets('Increment the counter on tap', (WidgetTester tester) async {
      await pumpApp(tester);

      IconData addIcon = Icons.add;
      await tester.tap(find.byIcon(addIcon));
      await tester.pump();

      expect(find.text(wrongCountAfterOneIncrementAsString), findsNothing);
      expect(find.text(countAfterOneIncrementAsString), findsOneWidget);
    });
  });
}
