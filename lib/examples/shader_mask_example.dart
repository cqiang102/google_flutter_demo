import 'package:flutter/material.dart';

class ShaderMaskExample extends StatelessWidget {
  const ShaderMaskExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: ShaderMask(
            shaderCallback: (Rect bounds) => const RadialGradient(
                radius: 1.0,
                center: Alignment.topLeft,
                tileMode: TileMode.mirror,
                colors:  [
                  Colors.yellow,
                  Colors.deepOrange,
                ]).createShader(bounds),
            child: const Text("ShaderMaskExample Text",style: TextStyle(
                fontSize: 25,
                color: Colors.white,decoration: TextDecoration.none),)),
      ),
    );
  }
}
