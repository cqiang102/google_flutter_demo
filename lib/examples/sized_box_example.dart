import 'package:flutter/material.dart';

class SizedBoxExample extends StatelessWidget {
  const SizedBoxExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        // 最大
        // child: SizedBox.expand(),
        // 最小
        // child: SizedBox.shrink(),
        child: SizedBox(
          width: 200,
          height: 100,
          child: Material(
            child: TextButton(
              onPressed: () {},
              child: const Icon(Icons.update),
            ),
          ),
        ),
      ),
    );
  }
}
