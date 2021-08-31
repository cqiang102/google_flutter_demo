import 'package:flutter/material.dart';

class FadeTransitionExample extends StatefulWidget {
  const FadeTransitionExample({Key? key}) : super(key: key);

  @override
  _FadeTransitionExampleState createState() => _FadeTransitionExampleState();
}

class _FadeTransitionExampleState extends State<FadeTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  late Animation<double> _animation;

  @override
  void initState() {
    // implement initState
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    // implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Wrap(
          children: [
            Container(
              width: 80,
              height: 80,
              color: Colors.greenAccent,
            ),
            GestureDetector(
              onTap: () {
                if (_animationController.isCompleted) {
                  _animationController.reverse();
                } else {
                  _animationController.forward();
                }
              },
              child: FadeTransition(
                opacity: _animation,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.orangeAccent,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }
}
