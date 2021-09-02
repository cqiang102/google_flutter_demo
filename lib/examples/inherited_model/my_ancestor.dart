
import 'package:flutter/material.dart';

class MyAncestor extends InheritedModel<String>{
   Color colorOne = Colors.purple;
   Color colorTwo = Colors.pink;
   MyAncestor(this.colorOne,this.colorTwo,Widget child,{Key? key}) : super(child: child,key: key);

  @override
  bool updateShouldNotify(MyAncestor oldWidget) {
    // implement updateShouldNotify
    bool flag = colorOne != oldWidget.colorOne || colorTwo != oldWidget.colorTwo;
    return flag;
    throw UnimplementedError();
  }

  @override
  bool updateShouldNotifyDependent(MyAncestor oldWidget, Set<dynamic> dependencies) {
    // TODO: implement updateShouldNotifyDependent
//    throw UnimplementedError();
  if(dependencies.contains("one") && colorOne != oldWidget.colorOne){
    return true;
  }
  if(dependencies.contains("two") && colorTwo != oldWidget.colorTwo){
    return true;
  }
  return false;
  }


}
