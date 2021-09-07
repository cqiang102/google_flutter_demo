import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          // width: 120,
          // height: 120,
          decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.blue),
          padding: const EdgeInsets.all(50),
          margin: const EdgeInsets.only(top: 80),
          transform: Matrix4.rotationZ(0.09),
          child: const Text(
            "Container",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                decoration: TextDecoration.none),
          ),
        ),
      ),
    );
  }
}
