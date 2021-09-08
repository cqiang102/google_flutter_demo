import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorExample extends StatelessWidget {
  const CupertinoActivityIndicatorExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: CupertinoActivityIndicator(
          animating: true,
          // radius: 60,
        ),
      ),
    );
  }
}
