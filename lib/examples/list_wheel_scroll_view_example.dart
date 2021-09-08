import 'package:flutter/material.dart';

class ListWheelScrollViewExample extends StatefulWidget {
  const ListWheelScrollViewExample({Key? key}) : super(key: key);

  @override
  _ListWheelScrollViewExampleState createState() =>
      _ListWheelScrollViewExampleState();
}

class _ListWheelScrollViewExampleState
    extends State<ListWheelScrollViewExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListWheelScrollView(
        itemExtent: 40,
        diameterRatio: 0.5,
        // offAxisFraction: -0.5,
        // useMagnifier: true,
        // magnification: 1.5,
        children: [
          for (int i = 0; i < 10; i++)
            Container(
              height: 100,
              color: Colors.orange,
              child: Text(
                "item $i",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.blue,
                    fontSize: 30),
              ),
            )
        ],
      ),
    );
  }
}
