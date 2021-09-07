import 'package:flutter/material.dart';

class AnimatedIconExample extends StatefulWidget {
  const AnimatedIconExample({Key? key}) : super(key: key);

  @override
  State<AnimatedIconExample> createState() => _AnimatedIconExampleState();
}

class _AnimatedIconExampleState extends State<AnimatedIconExample>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    // implement initState
    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    //   ..addStatusListener((AnimationStatus status) {
    //     if (status == AnimationStatus.completed) {
    //       animationController.reverse();
    //     } else if (status == AnimationStatus.dismissed) {
    //       animationController.forward();
    //     }
    //   });
    // animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          Material(
            child: InkWell(
                onDoubleTap: () {
                  animationController.reverse();
                },
                onTap: () {
                  animationController.forward();
                },
                child: AnimatedIcon(
                    icon: AnimatedIcons.play_pause,
                    progress: animationController)),
          )
        ],
      ),
    );
  }
}
