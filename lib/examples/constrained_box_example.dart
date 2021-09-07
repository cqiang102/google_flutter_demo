import 'package:flutter/material.dart';

class ConstrainedBoxExample extends StatelessWidget {
  const ConstrainedBoxExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO 不知道咋用
    return Container(
      color: Colors.white,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 100,
        ),
        child: Material(
          child: ElevatedButton(
            onPressed: () {},
            child: Container(
              color: Colors.green,
              child: const Icon(Icons.animation),
            ),
          ),
        ),
      ),
    );
  }
}
