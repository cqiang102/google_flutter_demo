import 'package:flutter/material.dart';

class CustomPaintExample extends StatelessWidget {
  const CustomPaintExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: CustomPaint(
            size: const Size(120, 120),
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // implement paint
    canvas.drawLine(const Offset(0.0, 0.0), Offset(size.width, size.height), Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // implement shouldRepaint
//    throw UnimplementedError();
  return oldDelegate.semanticsBuilder != semanticsBuilder;

  }
}
