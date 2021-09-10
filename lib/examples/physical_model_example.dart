import 'package:flutter/material.dart';

class PhysicalModelExample extends StatelessWidget {
  const PhysicalModelExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: PhysicalModel(
            borderRadius: BorderRadius.circular(10),
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
          ),
          height: 80,
          width: 80,
        ),
        color: Colors.black,
      )),
    );
  }
}
