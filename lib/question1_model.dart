import 'package:flutter/material.dart';

class Question1Model extends ChangeNotifier {
  String question1Text = 'やっぱりビールには揚げたタガメだと思う';

  void changeQuestion1Text() {
    question1Text = '揚げたタガメとビールは最高にあうと思う！';
    notifyListeners();
  }
}
