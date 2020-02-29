import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  Counter();

  int get count => _count;
  String get countAsString => _count.toString();

  void increment() {
    _count++;
    notifyListeners();
  }
}
