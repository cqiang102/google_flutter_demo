import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FlutterSlidableExample extends StatelessWidget {
  const FlutterSlidableExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slidable(
                actions: const [
                  IconSlideAction(
                    icon: Icons.delete,
                    color: Colors.redAccent,
                  ),
                  IconSlideAction(
                    icon: Icons.savings,
                    color: Colors.green,
                  )
                ],
                secondaryActions: const [
                  IconSlideAction(
                    icon: Icons.piano,
                    color: Colors.blue,
                  ),
                ],
                child: const ListTile(
                  title: Text("FlutterSlidableExample"),
                  subtitle: Text("flutter_slidable"),
                  leading: Icon(Icons.yard),
                ),
                actionPane: const SlidableScrollActionPane())
          ],
        ),
      ),
    );
  }
}
