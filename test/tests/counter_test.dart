import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_demo_improved/widgets/counter/counter.dart';
import '../fixture_data/counter_fixture_data.dart';

void main() {
  group('Basic tests for the counter class', () {
    Counter _counter;

    setUp(() {
      _counter = Counter();
    });

    test('Count getters', () {
      expect(_counter.count, initialCount);
      expect(_counter.countAsString, initialCountAsString);
    });

    test('Increment the counter', () {
      _counter.increment();

      expect(_counter.count, countAfterOneIncrement);
    });
  });
}
