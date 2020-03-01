import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_demo_improved/widgets/counter/counter.dart';
import '../fixture_data/counter_fixture_data.dart';

void main() {
  group('Basic tests for the counter class', () {
    Counter counter;

    setUp(() {
      counter = Counter();
    });

    test('Count getters', () {
      expect(counter.count, initialCount);
      expect(counter.countAsString, initialCountAsString);
    });

    test('Increment the counter', () {
      counter.increment();

      expect(counter.count, countAfterOneIncrement);
    });
  });
}
