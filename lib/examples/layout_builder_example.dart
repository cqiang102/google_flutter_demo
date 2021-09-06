import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (
      context,
      constraints,
    ) {
      return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "maxHeight : ${constraints.maxHeight}",
              style: const TextStyle(
                  fontSize: 22,
                  color: Colors.blue,
                  decoration: TextDecoration.none),
            ),
            Text(
              "maxWidth : ${constraints.maxWidth}",
              style: const TextStyle(
                  fontSize: 22,
                  color: Colors.blue,
                  decoration: TextDecoration.none),
            ),
          ],
        ),
      );
    });
  }
}
