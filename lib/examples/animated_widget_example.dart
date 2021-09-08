import 'package:flutter/material.dart';

class AnimatedWidgetExample extends StatefulWidget {
  const AnimatedWidgetExample({Key? key}) : super(key: key);

  @override
  State<AnimatedWidgetExample> createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    // implement initState
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween(begin: 1.0, end: 10.0).animate(_controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: ButtonTransition(
        width: _animation,
        onPressed: () async{
          await _controller.forward();
          _controller.reverse();
        },
      )),
    );
  }
}

class ButtonTransition extends AnimatedWidget {
  ButtonTransition({required width, required this.onPressed, Key? key})
      : super(listenable: width, key: key);
  VoidCallback onPressed;

  Animation<double> get width => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    // implement build
    return OutlinedButton(
      style: ButtonStyle(
          side: MaterialStateBorderSide.resolveWith((states) => BorderSide(
              color: Colors.blue,
              width: width.value,
              style: BorderStyle.solid))),
      onPressed: onPressed,
      child: const Text("Click me"),
    );
  }
}
