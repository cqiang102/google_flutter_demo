import 'package:flutter/material.dart';

class MouseRegionExample extends StatelessWidget {
  const MouseRegionExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: MouseRegion(
          cursor: SystemMouseCursors.contextMenu,
          // cursor: SystemMouseCursors.progress,
          onEnter: (e)=>print(e),
          onHover: (e)=>print(e),
          onExit: (e)=>print(e),
          child: Container(
            color: Colors.blue,
            width: 180,
            height: 180,
          ),
        ),
      ),
    );
  }
}
