import 'package:flutter/material.dart';

class SpacerExample extends StatelessWidget {
  const SpacerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(30,),
      color: Colors.white,child: Row(

      children: [
        Spacer(),
        Container(color: Colors.green,width: 50,height: 80,),
        Spacer(flex: 2,),
        Container(color: Colors.blue,width: 50,height: 80,),
        Spacer(flex: 4,),
        Container(color: Colors.red,width: 50,height: 80,),
        Spacer(flex: 2,),
        Container(color: Colors.yellow,width: 50,height: 80,),
        Spacer(),
      ],),);
  }
}
