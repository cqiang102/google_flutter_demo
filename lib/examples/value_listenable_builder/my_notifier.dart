import 'package:flutter/cupertino.dart';

class MyNotifier extends ValueNotifier<int>{

  MyNotifier(int value) : super(value);
  void add(){
    value +=1;
    notifyListeners();
  }
}