import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  int _index = 0;
  var colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.grey,
    Colors.pink,
    Colors.black
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _index++;
              _index %= colors.length;
            });
          },
          child: AnimatedContainer(
            width: (_index + 1) * 30,
            height: (_index + 1) * 30,
            duration: const Duration(seconds: 1),
            color: colors[_index],
          ),
        ),
      ),
    );
  }
}
