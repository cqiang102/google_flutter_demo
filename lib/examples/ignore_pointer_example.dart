import 'package:flutter/material.dart';

class IgnorePointerExample extends StatelessWidget {
  const IgnorePointerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: IgnorePointer(
        ignoring: false,
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("click"),
              ),
              InkWell(
                  onTap: () {},
                  child: const Text(
                    "this",
                  ),),
            ],
          ),
        ),
      ),
    );
  }
}
