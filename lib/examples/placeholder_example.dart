import 'package:flutter/material.dart';

class PlaceholderExample extends StatelessWidget {
  const PlaceholderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,child: SingleChildScrollView(
      padding: const EdgeInsets.all(40),
      child: Column(children: const [
        Placeholder(),
        Placeholder(fallbackHeight: 100,color: Colors.transparent,),
        Placeholder(fallbackHeight: 200,color: Colors.green,strokeWidth: 1.0,),
        Placeholder(fallbackHeight: 300,color: Colors.red,strokeWidth: 3.0,),
      ],),
    ),);
  }
}
