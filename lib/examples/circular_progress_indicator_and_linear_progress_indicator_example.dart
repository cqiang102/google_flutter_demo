import 'package:flutter/material.dart';

class CircularProgressIndicatorAndLinearProgressIndicatorExample extends StatelessWidget {
  const CircularProgressIndicatorAndLinearProgressIndicatorExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const[
        CircularProgressIndicator(
          strokeWidth: 10.0,
        ),
        SizedBox(height: 50,),
        LinearProgressIndicator(
          value: 0.5,
          minHeight: 20,
        ),
      ],),);
  }
}
