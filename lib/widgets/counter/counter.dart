import 'package:flutter/foundation.dart';

abstract class CounterInterface {
  static const defaultInitialCount = 0;

  int get count;

  void increment();
}

class Counter with ChangeNotifier implements CounterInterface {
  int _count = CounterInterface.defaultInitialCount;

  Counter();

  @override
  int get count => _count;
  String get countAsString => _count.toString();

  @override
  void increment() {
    _count++;
    notifyListeners();
  }
}
