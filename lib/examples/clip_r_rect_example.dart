import 'package:flutter/material.dart';

class ClipRRectExample extends StatelessWidget {
  const ClipRRectExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          // 裁剪圆角矩形
          ClipRRect(
//          clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
          // 裁剪圆形，椭圆形
          ClipOval(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
          // 按指定路径裁剪
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //  implement getClip
//    throw UnimplementedError();
    Path path = Path();
    path.moveTo(0.0, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    //  implement shouldReclip
//    throw UnimplementedError();
    return false;
  }
}
