import 'package:flutter/material.dart';

class DismissibleExample extends StatelessWidget {
  const DismissibleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        margin: const EdgeInsets.all(38.0),
        child: Wrap(
          children: [
            Dismissible(
              key: const ValueKey("1"),
              onDismissed: (direction) {
                // ignore: avoid_print
                print(direction);
              },
              direction: DismissDirection.horizontal,
              // direction: DismissDirection.down,
              // direction: DismissDirection.vertical,
              background: Container(
                color: Colors.red,
              ),
              secondaryBackground: Container(
                color: Colors.green,
              ),
              child: const Material(
                color: Colors.blue,
                child: ListTile(
                  title: Text("测试测试"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
