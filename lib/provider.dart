import 'package:flutter/material.dart';



class MyScrollPosition with ChangeNotifier {
  double _scrollValue = 0;

  double get scrollPosition => _scrollValue;

  void scrollPositionUpdate(double scrollVal) {
    _scrollValue = scrollVal;
    notifyListeners();
  }


}