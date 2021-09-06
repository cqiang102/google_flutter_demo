import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,child: Wrap(
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: [
        Container(color:Colors.blue,width:80,height:80,child: FittedBox(child: Container(width: 60,height: 80,color: Colors.green,),)),
        Container(color:Colors.blue,width:80,height:80,child: FittedBox(fit:BoxFit.contain,child: Container(width: 60,height: 80,color: Colors.greenAccent,),)),
        Container(color:Colors.blue,width:80,height:80,child: FittedBox(child: Container(width: 80,height: 60,color: Colors.red,),)),
        Container(color:Colors.blue,width:80,height:80,child: FittedBox(fit:BoxFit.fill,child: Container(width: 80,height: 60,color: Colors.redAccent,),)),
    ],),);
  }
}
