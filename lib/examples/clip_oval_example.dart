import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipOvalExample extends StatelessWidget {
  const ClipOvalExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
              child: Container(
                  color: Colors.pinkAccent,
                  child: const FlutterLogo(
                    size: 88,
                  ))),
          ClipOval(
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.blue,
              child: const Text(
                "长方形变椭圆",
                style: TextStyle(
                    fontSize: 22,
                    decoration: TextDecoration.none,
                    color: Colors.white),
              ),
            ),
          ),
          ClipOval(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 120,
              height: 120,
              alignment: Alignment.center,
              color: Colors.blue,
              child: const Text(
                "圆形变圆",
                style: TextStyle(
                    fontSize: 22,
                    decoration: TextDecoration.none,
                    color: Colors.white),
              ),
            ),
          )

        ],
      ),
    );
  }
}
