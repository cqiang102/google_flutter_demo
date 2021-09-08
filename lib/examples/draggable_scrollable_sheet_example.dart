import 'package:flutter/material.dart';

class DraggableScrollableSheetExample extends StatefulWidget {
  const DraggableScrollableSheetExample({Key? key}) : super(key: key);

  @override
  _DraggableScrollableSheetExampleState createState() =>
      _DraggableScrollableSheetExampleState();
}

class _DraggableScrollableSheetExampleState
    extends State<DraggableScrollableSheetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // color: Colors.white,
      body: DraggableScrollableSheet(
        initialChildSize: 0.2,
        minChildSize: 0.0,
        builder: (BuildContext context, ScrollController scrollController) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  height: 150,
                ),
                Container(
                  color: Colors.blue,
                  height: 150,
                ),
                Container(
                  color: Colors.green,
                  height: 150,
                ),
                Container(
                  color: Colors.pink,
                  height: 150,
                ),
                Container(
                  color: Colors.purple,
                  height: 150,
                ),
                Container(
                  color: Colors.yellow,
                  height: 150,
                ),
              ],
            ),
            controller: scrollController,
          );
        },
      ),
      // child: ,
    );
  }
}
