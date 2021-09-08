import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({Key? key}) : super(key: key);

  @override
  _AnimatedCrossFadeExampleState createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: InkWell(
            onTap: () {
              setState(() => flag = !flag);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnimatedCrossFade(
                    // alignment: Alignment.center,
                    reverseDuration: const Duration(seconds: 1),
                    layoutBuilder:
                        (topChild, topChildKey, bottomChild, bottomChildKey) {
                      return Stack(
                        // clipBehavior:Clip.hardEdge
                        clipBehavior: Clip.none, alignment: Alignment.center,
                        children: [
                          Positioned(
                            child: topChild,
                            top: 0,
                            key: topChildKey,
                          ),
                          Positioned(
                            child: bottomChild,
                            key: bottomChildKey,
                          ),
                        ],
                      );
                    },
                    crossFadeState: flag
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    firstChild: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                    duration: const Duration(seconds: 1),
                    secondChild: Container(
                      width: 150,
                      height: 150,
                      color: Colors.yellow,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
