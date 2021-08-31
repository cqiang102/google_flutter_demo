import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  PageViewExample({Key? key}) : super(key: key);

  //  final PageController _controller = PageController(initialPage: 1);
  final _controller = PageController(initialPage: 0,);

  @override
  Widget build(BuildContext context) {
    return PageView(

      controller: _controller,
      // 方向
      scrollDirection: Axis.vertical,

//      reverse: true,

      children: [
        Container(
          color: Colors.pink,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.deepOrange,
        ),
        Container(
          color: Colors.lightBlue,
        ),
      ],
    );
  }
}
