import 'package:flutter/material.dart';

class PaddingExample extends StatelessWidget {
  const PaddingExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.blue, width: 2.0, style: BorderStyle.solid)),
            child: const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "PaddingExample",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.blue, width: 2.0, style: BorderStyle.solid)),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 40, 50),
              child: Text(
                "PaddingExample",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue,
                    decoration: TextDecoration.none),
              ),
            ),
          )
        ],
      ),
    );
  }
}
