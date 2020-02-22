import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';
import '../lib/widgets/counter/counter.dart';


void main() {
  group('Basic tests for the counter class', (){
    Counter _counter;

    setUp((){
      _counter = Counter();
    });

    test('Count getters', (){
      expect(_counter.count, 0);
      expect(_counter.countAsString, '0');
    });

    test('Increment the counter', (){
      _counter.increment();

      expect(_counter.count, 1);
    });
  });

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}