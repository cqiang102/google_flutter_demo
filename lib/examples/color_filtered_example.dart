import 'package:flutter/material.dart';

class ColorFilteredExample extends StatelessWidget {
  const ColorFilteredExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.green, BlendMode.modulate),
          child: FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }
}
