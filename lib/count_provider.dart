import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int counter = 0;

  void incrementCounter() {
    counter = counter + 1;
    notifyListeners();
  }
}
