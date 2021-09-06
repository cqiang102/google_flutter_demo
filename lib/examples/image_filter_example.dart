import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilterExample extends StatelessWidget {
  const ImageFilterExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
          image: DecorationImage(
              image: NetworkImage(
                  "https://att.uibaba.com/p/202001/770f27b0143abd000fbf8e13801a0e20.jpg"))),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        // 需要 child 才能显示模糊
//        child: Container(color: Colors.white.withOpacity(0.0),),
        child: const Icon(Icons.add),
//        child: Container(color: Colors.blue,width: 100,height: 100,),
      ),
    );
  }
}
