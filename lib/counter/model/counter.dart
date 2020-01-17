import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int value = 0;

  void increase() {
    print('[Debug] Counter.increase');
    value++;
    notifyListeners();
  }
}