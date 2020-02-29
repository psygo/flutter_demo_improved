import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../lib/main.dart';
import '../fixture_data/counter_fixture_data.dart';

void main() {
  group('Test the widgets', () {
    testWidgets('Initial setup', (WidgetTester tester) async {
      await tester.pumpWidget(FlutterDemoApp());

      expect(find.text(expectedInitialCountAsString), findsOneWidget);
      expect(find.text(unexpectedInitialCountAsString), findsNothing);
    });

    testWidgets('Increment the counter on tap', (WidgetTester tester) async {
      await tester.pumpWidget(FlutterDemoApp());

      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      expect(find.text(unexpectedCountAfterOneIncrementAsString), findsNothing);
      expect(find.text(expectedCountAfterOneIncrementAsString), findsOneWidget);
    });
  });
}
