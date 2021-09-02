import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeInImageExample extends StatelessWidget {
  const FadeInImageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: FadeInImage.memoryNetwork(
            fadeInDuration: const Duration(seconds: 1),
            height: 100,
            width: 200,
            placeholder: kTransparentImage,
            image: "https://www.mcmod.cn/images/banner/1-3.jpg"),
      ),
    );
  }
}
