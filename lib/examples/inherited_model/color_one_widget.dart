import 'package:flutter/material.dart';

import 'my_ancestor.dart';

class ColorOneWidget extends StatelessWidget {
  const ColorOneWidget({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
//    MyAncestor? myAncestor = context.dependOnInheritedWidgetOfExactType(aspect: MyAncestor);
//    MyAncestor? myAncestor = context.dependOnInheritedWidgetOfExactType<MyAncestor>(aspect: "one");
    MyAncestor? myAncestor = InheritedModel.inheritFrom(context,aspect: "one");
    return Container(color: myAncestor?.colorOne,height: 60,width: 60,);
  }
}
