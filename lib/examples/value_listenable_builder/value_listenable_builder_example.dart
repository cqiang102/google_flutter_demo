import 'package:flutter/material.dart';

import 'my_notifier.dart';

class ValueListenableBuilderExample extends StatelessWidget {
  const ValueListenableBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myNotifier = MyNotifier(0);

    return Container(
      color: Colors.white,
      child: ValueListenableBuilder(
        valueListenable: myNotifier,
        builder: (BuildContext context, int value, Widget? child) {
          return Wrap(
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              Text(
                "value is $value",
                style: const TextStyle(
                    color: Colors.blue, decoration: TextDecoration.none),
              ),
              TextButton(
                  onPressed: () {
                    myNotifier.add();
                  },
                  child: const Text("click me"))
            ],
          );
        },
      ),
    );
  }
}
