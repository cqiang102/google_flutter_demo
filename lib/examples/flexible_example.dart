import 'package:flutter/material.dart';

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,child: Column(children: [
      Flexible(flex:2,child: Container(color: Colors.blue,)),
      Flexible(flex: 3,child: Container(color: Colors.green,)),
      Flexible(flex: 3,child: Container(color: Colors.red,)),
      Flexible(flex: 1,child: Container(color: Colors.yellow,)),
    ],),);
  }
}
