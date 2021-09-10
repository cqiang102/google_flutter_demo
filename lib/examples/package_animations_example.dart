import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class PackageAnimationsExample extends StatefulWidget {
  const PackageAnimationsExample({Key? key}) : super(key: key);

  @override
  State<PackageAnimationsExample> createState() =>
      _PackageAnimationsExampleState();
}

class _PackageAnimationsExampleState extends State<PackageAnimationsExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: OpenContainer(
          openColor: Colors.pink,
          openBuilder: (BuildContext context,
              void Function({Object? returnValue}) action) {
            return Container(
              color: Colors.blue,
              width: 180,
              height: 180,
            );
          },
          closedBuilder: (BuildContext context, void Function() action) {
            return const Text("click");
          },
        ),
      ),
    );
  }
}
