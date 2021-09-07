import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({Key? key}) : super(key: key);

  @override
  _AnimatedPositionedExampleState createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  double _top = 50;
  double _left = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          AnimatedPositioned(
            top: _top,
              left: _left,
              child: Container(
                color: Colors.green,
                width: 100,
                height: 100,
              ),
              duration: const Duration(seconds: 1),),
           Center(child: TextButton(onPressed: () {
             _top+=50;
             _left+=50;
             _top = _top%600;
             _left = _left%300;
             setState(() {

             });
           }, child: const Text("click"),),)
        ],
      ),
    );
  }
}
