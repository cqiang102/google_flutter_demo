import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({Key? key}) : super(key: key);

  @override
  _AnimatedBuilderExampleState createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;

  @override
  void initState() {
    // implement initState
    _animationController = AnimationController(duration: const Duration(seconds: 3), vsync: this,)..repeat();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final _animation = Tween(begin: 0.0, end: 2.0 * pi).animate(_animationController);
    return Container(
      color: Colors.white,
      child: AnimatedBuilder(
        animation: _animation,
        child: const FlutterLogo(),
        builder: (BuildContext context, Widget? child) {return Transform.rotate(angle: _animation.value,child: child,);},
      ),
    );
  }
}
