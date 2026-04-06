import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;
  List<int> _values = [];

  int get counter => _counter;
  List<int> get values => _values.reversed.toList(); 

  void increment() {
    _counter++;

    _values.add(_counter);

    
    if (_values.length > 5) {
      _values.removeAt(0);
    }

    notifyListeners();
  }

  void reset() {
    _counter = 0;
    notifyListeners();
  }
}