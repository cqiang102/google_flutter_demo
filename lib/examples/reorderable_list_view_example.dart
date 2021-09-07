import 'package:flutter/material.dart';

class ReorderableListViewExample extends StatefulWidget {
  const ReorderableListViewExample({Key? key}) : super(key: key);

  @override
  State<ReorderableListViewExample> createState() =>
      _ReorderableListViewExampleState();
}

class _ReorderableListViewExampleState
    extends State<ReorderableListViewExample> {
  final items = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: ReorderableListView(
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              int temp = items[oldIndex];
              items.removeAt(oldIndex);
              items.insert(newIndex, temp);
            });
          },
          header: const Text(
            "头",
            style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
                decoration: TextDecoration.none),
          ),
          children: [
            for (final item in items)
              DecoratedBox(
                key: ValueKey("key_$item"),
                decoration: const BoxDecoration(color: Colors.greenAccent),
                child: ListTile(
                  title: Text("item #$item"),
                ),
              )
          ],
        ),
      ),
    );
  }
}
