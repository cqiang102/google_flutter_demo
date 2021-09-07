import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,child: Stack(children: [
      Positioned(top: 40,child: Container(width: 200,height: 100,color: Colors.green,),),
      Positioned(top: 80,child: Container(width: 300,height: 100,color: Colors.red,),),
      Positioned(top: 120,child: Container(width: 400,height: 100,color: Colors.yellow,),),
    ],),);
  }
}
