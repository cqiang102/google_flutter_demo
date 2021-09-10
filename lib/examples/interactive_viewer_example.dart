import 'package:flutter/material.dart';

class InteractiveViewerExample extends StatelessWidget {
  const InteractiveViewerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: InteractiveViewer(
        child: FlutterLogo(),
      ),
    );
  }
}
