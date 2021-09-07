import 'package:flutter/material.dart';

class LimitedBoxExample extends StatelessWidget {
  const LimitedBoxExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO 不知道为啥不生效
    return Container(
      color: Colors.white,
      child: Center(
        child: LimitedBox(
          maxWidth: 100,
          maxHeight: 100,
          child: Container(
            color: Colors.green,
            // width: 500,
            // height: 50,
          ),
        ),
      ),
    );
  }
}
