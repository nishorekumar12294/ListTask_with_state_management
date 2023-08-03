import 'package:flutter/material.dart';

class CommonNotifier extends ChangeNotifier {

  // Integer value
  int _count = 0;

  int get count => _count;

  set count(int value) {
    _count = value;
    notifyListeners();
  }

  List<int> data = [];

  void incrementCounter(int index) {
    if (index >= 0 && index < data.length) {
      data[index] = data[index] + 1;
      notifyListeners();
    }
  }

  CommonNotifier() {
    for (var i = 0; i <= 100; i++) {
      data.add(0); // Initialize the count value for each item as 0
    }
  }
}


