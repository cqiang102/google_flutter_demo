import 'package:flutter/material.dart';

class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FractionallySizedBox(
        widthFactor: 0.6,
        heightFactor: 0.1,
        child: Container(
          color: Colors.yellow,
        ),
      ),
    );
  }
}
