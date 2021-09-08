import 'package:flutter/material.dart';

class ClipPathExample extends StatelessWidget {
  const ClipPathExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: ClipPath(
        child: Container(
          color: Colors.blue,
          width: 120,
          height: 120,
        ),
            clipper: MyCustomClipper(),
      )),
    );
  }
}
class MyCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // implement getClip
    Path path = Path();
    path.lineTo(0,size.width/2 );
    path.lineTo(size.width/2,size.height );
    path.lineTo(size.height,0 );
    path.lineTo(0,0 );
    return path;
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    //  implement shouldReclip
    return false;
    throw UnimplementedError();
  }
}
