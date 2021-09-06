import 'dart:math';

import 'package:flutter/material.dart';

class TransformExample extends StatelessWidget {
  const TransformExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Wrap(

          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.center,
          spacing: 40,
          runSpacing: 40,
          children: [
            // 旋转45度
            Transform.rotate(
              angle: pi / 4,
              child: Container(
                width: 90,
                height: 90,
                color: Colors.red,
              ),
            ),
            // 放大
            Transform.scale(
              scale: 1.2,
              child: Container(
                width: 90,
                height: 90,
                color: Colors.green,
              ),
            ),
            // 偏移
            Transform.translate(
              offset: const Offset(20, 20),
              child: Container(
                width: 90,
                height: 90,
                color: Colors.purple,
              ),
            ),
            Transform(
              transform: Matrix4.skewX(0.3),
              child: Container(
                width: 90,
                height: 90,
                color: Colors.cyan,
              ),
            ),
            Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.01)
                ..rotateX(0.03),
              child: Container(
                width: 90,
                height: 90,
                color: Colors.pink,
              ),
            )

          ]),
    );
  }
}
