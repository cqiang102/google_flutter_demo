import 'package:flutter/material.dart';

class FloatingActionButtonExample extends StatefulWidget {
  const FloatingActionButtonExample({Key? key}) : super(key: key);

  @override
  _FloatingActionButtonExampleState createState() =>
      _FloatingActionButtonExampleState();
}

class _FloatingActionButtonExampleState
    extends State<FloatingActionButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(color: Colors.greenAccent,height: 60,),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.photo_camera,
          color: Colors.white,
        ),
      ),
    );
  }
}
