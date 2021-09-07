import 'package:flutter/material.dart';

class RichTextExample extends StatelessWidget {
  const RichTextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      color: Colors.white,
      child: RichText(
        text: const TextSpan(
            style:
            TextStyle(fontSize: 22,color: Colors.blue, decoration: TextDecoration.none),
            children:  [
              TextSpan(text: "It`s "),
              TextSpan(text: "all ",style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: " widgets"),
            ]),
      ),
    );
  }
}
