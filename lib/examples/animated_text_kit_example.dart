import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextKitExample extends StatelessWidget {
  const AnimatedTextKitExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText("Build Apps",
                textStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    decoration: TextDecoration.none)),
            ColorizeAnimatedText("Hello World",
                textStyle:
                    const TextStyle(fontSize: 25, decoration: TextDecoration.none),
                colors: [Colors.blue, Colors.orange])
          ],
        ),
      ),
    );
  }
}
