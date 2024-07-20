import 'package:flutter/material.dart';



class MyScrollPosition with ChangeNotifier {
  double _scrollValue = 0;

  double get scrollPosition => _scrollValue;

  bool _isScrollDown = true;
  bool get isScrollUp => _isScrollDown;

  void scrollPositionUpdate(double scrollVal) {
    if(_scrollValue > scrollVal){
      _isScrollDown = true;
    }
    if(_scrollValue < scrollVal){
      _isScrollDown = false;
    }
    _scrollValue = scrollVal;
    print("_scorllvalue : $_scrollValue,  isScrollup: $_isScrollDown" );
    notifyListeners();
  }


}