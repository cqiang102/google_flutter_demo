import 'package:flutter/material.dart';

class FlutterLogoExample extends StatelessWidget {
  const FlutterLogoExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: FlutterLogo(size: 128,),
      ),
    );
  }
}
