import 'package:flutter_test/flutter_test.dart';

import '../../lib/widgets/counter/counter.dart';
import '../mocks/counter_mocks.dart';


void main() {
  group('Basic tests for the counter class', (){
    Counter _counter;

    setUp((){
      _counter = Counter();
    });

    test('Count getters', (){
      expect(_counter.count, expectedInitialCount);
      expect(_counter.countAsString, expectedInitialCountAsString);
    });

    test('Increment the counter', (){
      _counter.increment();

      expect(_counter.count, expectedCountAfterOneIncrement);
    });
  });
}