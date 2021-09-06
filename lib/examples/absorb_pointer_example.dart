import 'package:flutter/material.dart';

class AbsorbPointerExample extends StatelessWidget {
  const AbsorbPointerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AbsorbPointer(
            absorbing: true,
            child: TextButton(
              onPressed: () {},
              child: const Text("TextButton"),
            ),
          ),
          AbsorbPointer(
            absorbing: false,
            child: TextButton(
              onPressed: () {},
              child: const Text("TextButton"),
            ),
          ),
        ],
      ),
    );
  }
}
