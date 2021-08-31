import 'package:flutter/material.dart';

class OpacityExample extends StatefulWidget {
  const OpacityExample({Key? key}) : super(key: key);

  @override
  _OpacityExampleState createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  double _opacity = 0.1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _opacity += 0.1;
                if (_opacity > 1) {
                  _opacity = 0.1;
                }
              });
            },
            child: AnimatedOpacity(
              curve: Curves.easeInSine,
              child: const Icon(
                Icons.image,
                size: 80,
              ),
              opacity: _opacity,
              duration: const Duration(seconds: 1),
            ),
          ),
          const Opacity(
            opacity: 0.7,
            child: Icon(
              Icons.offline_bolt,
              size: 80,
            ),
          ),
        ],
      ),
    );
  }
}
