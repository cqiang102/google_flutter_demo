import 'package:flutter/material.dart';

class DividerExample extends StatelessWidget {
  const DividerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
      Container(color: Colors.blue,height: 150,width: 150,),
      const Divider(height: 50,thickness: 10,),
      Container(color: Colors.blue,height: 150,width: 150,),
    ],),);
  }
}
