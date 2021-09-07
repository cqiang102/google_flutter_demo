import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({Key? key}) : super(key: key);

  @override
  _AnimatedPaddingExampleState createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  double _paddingValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(color: Colors.white,child: AnimatedPadding(duration: const Duration(seconds: 1),
      padding: EdgeInsets.all(_paddingValue),
      child: InkWell(onTap: (){
        setState(() {
          _paddingValue+=10;
          _paddingValue %= 200;
        });
      },child: Container(color: Colors.green,))),),
    );
  }
}
