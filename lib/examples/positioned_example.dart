import 'package:flutter/material.dart';

class PositionedExample extends StatelessWidget {
  const PositionedExample({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Stack(children: [
        Positioned.fill(
          child: Container(color: Colors.blue.withOpacity(0.6),),),
        const Positioned(
          bottom: 80,
          right: 80,
          width: 50,
          height: 50,
          child: FlutterLogo(),),
      ],),
    );
  }
}
