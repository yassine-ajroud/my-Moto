import 'package:flutter/widgets.dart';

class MyProvide with ChangeNotifier {
  bool ios = false;

  void toggle() {
    ios = !ios;
    notifyListeners();
  }
}
