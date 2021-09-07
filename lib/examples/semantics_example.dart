import 'package:flutter/material.dart';

class SemanticsExample extends StatelessWidget {
  const SemanticsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TODO 搞不懂
          Semantics(
            label: "green",
            enabled: true,
            readOnly: true,
            child:  TextButton(
              child: const Text("green"),
               onPressed: () { },
            ),
          ),
        ],
      ),
    );
  }
}
