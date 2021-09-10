import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilteredExample extends StatelessWidget {
  const ImageFilteredExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: ImageFiltered(imageFilter: ImageFilter.blur(sigmaX: 2,sigmaY: 2), child: const FlutterLogo(size: 88,)),
      ),
    );
  }
}
