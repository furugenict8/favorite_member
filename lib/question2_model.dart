import 'package:flutter/material.dart';

class Question2Model extends ChangeNotifier {
  Color bodyColor = Colors.blue;
  void changeQuestion2BackGroundColor() {
    //　TODO 背景色をかえる
    bodyColor = Colors.cyanAccent;
    notifyListeners();
  }
}
