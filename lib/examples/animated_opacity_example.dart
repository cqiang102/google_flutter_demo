import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({Key? key}) : super(key: key);

  @override
  _AnimatedOpacityExampleState createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  double _animatedOpacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: AnimatedOpacity(
          duration: const Duration(seconds: 1),
          opacity: _animatedOpacity,
          child: InkWell(onTap:(){
            setState(() {
              if(_animatedOpacity == 1.0){
                _animatedOpacity = 0.0;
              }else{
                _animatedOpacity = 1.0;
              }
            });
          },child: const FlutterLogo()),
        ),
      ),
    );
  }
}
