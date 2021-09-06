import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  const AlignExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.blue, width: 2.0, style: BorderStyle.solid)),
          width: 200,
          height: 200,
          child: const Align(
//            alignment: Alignment.bottomCenter,
//            alignment: Alignment.centerLeft,
            alignment: Alignment(-1,1),
            child: Text(
              "AlignExample",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.blue,
                  decoration: TextDecoration.none),
            ),
          ),
        ),
      ),
    );
  }
}
