import 'package:flutter/material.dart';

class ScrollbarExample extends StatelessWidget {
  const ScrollbarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scrollbar(
        isAlwaysShown: true,
        showTrackOnHover: true,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$index",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
