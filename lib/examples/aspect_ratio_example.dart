import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: AspectRatio(
          // 宽高比例
          aspectRatio: 4 / 2,
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
