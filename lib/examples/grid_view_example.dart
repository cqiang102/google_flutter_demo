import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(

        mainAxisSpacing: 10.0,
        crossAxisSpacing: 20.0,
        crossAxisCount: 2,
        children:  [
          Container(
            // 居中
            alignment: Alignment.center,
            color: Colors.yellow,
            child: Text(
              "1",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 22,
                  decoration: TextDecoration.none),
            ),
          ),
          Text(
            "2",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                decoration: TextDecoration.none),
          ),
          Text(
            "3",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                decoration: TextDecoration.none),
          ),
          Text(
            "4",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                decoration: TextDecoration.none),
          ),
          Text(
            "5",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                decoration: TextDecoration.none),
          ),
          Text(
            "6",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }
}
