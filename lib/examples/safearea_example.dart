import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_flutter_demo/util.dart';

class SafeAreaExample extends StatelessWidget {
  const SafeAreaExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      pagePop(context);
                    },
                    child: const Icon(
                      CupertinoIcons.back,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                  const Text(
                    "SafeArea",
                    style: TextStyle(
                        color: Colors.blue, decoration: TextDecoration.none),
                  ),
                  GestureDetector(
                    onTap: () {
                      pagePop(context);
                    },
                    child: const Icon(
                      CupertinoIcons.search,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Center(
                child: Text(
                  "随意的布局",
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.none),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
