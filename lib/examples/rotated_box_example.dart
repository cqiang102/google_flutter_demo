import 'package:flutter/material.dart';

class RotatedBoxExample extends StatelessWidget {
  const RotatedBoxExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: RotatedBox(
          // 1 -> 90 度 ，2 -> 180 度 ，3 -> 270 度
          quarterTurns: 3,
          child: Container(
            color: Colors.blue,
            width: 180,
            height: 90,
          ),
        ),
      ),
    );
  }
}
