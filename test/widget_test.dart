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
      const int expectedInitialCount = 0;
      final String expectedInitialAsString = expectedInitialCount.toString();

      expect(_counter.count, expectedInitialCount);
      expect(_counter.countAsString, expectedInitialAsString);
    });

    test('Increment the counter', (){
      const int expectedCountAfterOneIncrement = 1;

      _counter.increment();

      expect(_counter.count, expectedCountAfterOneIncrement);
    });
  });

  group('Test the widgets', (){    
    testWidgets('Initial setup', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);
    });

    testWidgets('Increment the counter on tap', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });
  });  
}