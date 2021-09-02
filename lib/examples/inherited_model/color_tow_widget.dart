import 'package:flutter/material.dart';

import 'my_ancestor.dart';

class ColorTwoWidget extends StatelessWidget {
  const ColorTwoWidget({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
//    MyAncestor? myAncestor = context.dependOnInheritedWidgetOfExactType<MyAncestor>(aspect: "two");
    MyAncestor? myAncestor = InheritedModel.inheritFrom(context,aspect: "two");

    return Container(color: myAncestor?.colorTwo,height: 60,width: 60,);
  }
}
